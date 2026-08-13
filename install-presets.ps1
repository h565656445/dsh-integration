#requires -Version 7.0
<#
.SYNOPSIS
  Hermes Harness DSH 衍生 —— 一键安装全部项目预设（PowerShell 7）。

.DESCRIPTION
  扫描 SourceRoot 下所有含 .dsh\preset.yml 的仓库目录，将每个 .dsh 目录整体复制到
  $DSH_HOME\.agent-presets\<预设ID>（预设ID = 仓库名（dsh- 前缀，无后缀））。
  默认 SourceRoot 为本脚本所在目录的上一级（即 projects 输出根，40 个衍生仓库所在处）。

  本脚本只做复制，不执行源架构中的任何脚本。

.PARAMETER SourceRoot
  要扫描的仓库根目录。默认取脚本上一级目录。

.PARAMETER DshHome
  目标 DSH 主目录。默认取 $env:DSH_HOME；未设置时使用 $HOME\.dsh。

.PARAMETER Only
  只安装指定仓库名（例如 -Only dsh-integration）。缺省安装全部。

.PARAMETER DryRun
  只打印将要安装的映射，不实际复制。

.EXAMPLE
  .\install-presets.ps1

.EXAMPLE
  .\install-presets.ps1 -Only dsh-integration -DryRun
#>
[CmdletBinding()]
param(
    [string]$SourceRoot = (Join-Path (Split-Path -Parent $PSScriptRoot) ''),
    [string]$DshHome = $env:DSH_HOME,
    [string]$Only,
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

if (-not $DshHome) {
    $DshHome = Join-Path $HOME '.dsh'
}

if (-not (Test-Path -LiteralPath $SourceRoot -PathType Container)) {
    throw "SourceRoot 不存在：$SourceRoot"
}

$targetBase = Join-Path $DshHome '.agent-presets'
if (-not $DryRun) {
    New-Item -ItemType Directory -Force -Path $targetBase | Out-Null
}

$repos = Get-ChildItem -LiteralPath $SourceRoot -Directory | Where-Object {
    $_.Name -notlike '.*' -and (Test-Path -LiteralPath (Join-Path $_.FullName '.dsh\preset.yml') -PathType Leaf)
}

$installed = 0
foreach ($repo in $repos) {
    $repoName = $repo.Name
    if ($Only -and $repoName -ne $Only) { continue }
    $presetId = $repoName
    $dst = Join-Path $targetBase $presetId
    if ($DryRun) {
        Write-Host ('[dry-run] {0}  ->  {1}' -f $repoName, $dst)
    }
    else {
        Copy-Item -LiteralPath (Join-Path $repo.FullName '.dsh') -Destination $dst -Recurse -Force
        Write-Host ('[ok] {0}  ->  {1}' -f $repoName, $dst)
    }
    $installed++
}

Write-Host ''
Write-Host ('扫描目录：{0}' -f $SourceRoot)
Write-Host ('目标目录：{0}' -f $targetBase)
Write-Host ('共处理 {0} 个仓库预设。' -f $installed)
if (-not $DryRun) {
    Write-Host '安装完成。请重启 DeepSeek Harness，在会话预设列表中选择对应预设。'
}