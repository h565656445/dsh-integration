# dsh-integration

<!-- DeepSeek Harness 衍生声明 -->
> **DeepSeek Harness 个人适配声明（Personal Adaptation Notice）**
>
> 本项目是 [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) 的**个人适配产物（personal adaptation）**，**并非 DeepSeek Harness 官方文件（not an official DeepSeek Harness file）**。随附功能、使用说明与个人产物，可与 DeepSeek Harness 搭配使用，也可独立使用。
>
> This project is a **personal adaptation** for DeepSeek Harness, and is **NOT an official DeepSeek Harness file**. It is bundled with features, documentation, and personal artifacts, and can be used alongside DeepSeek Harness or standalone.

**作者 / Author**: [h565656445](https://github.com/h565656445)

**合作 / Collaboration**: 如有项目可以一起合作，欢迎联系。微信：`wohaishihenshuaide`。If you have projects, let's collaborate. WeChat: `wohaishihenshuaide`.

---

## 用途 / What this is for

总集成仓库：31 项目索引目录、一键安装脚本与 DeepSeek Harness 接入导航，是所有衍生的着陆页。

Master integration repo: the 31-project catalog, one-click install script and DeepSeek Harness onboarding.

---

## Hermes Harness DSH Master Integration / Hermes Harness DSH 总集成

本仓库是 Hermes Harness 全部 31 个 DeepSeek Harness（DSH）衍生项目的**总集成入口**：集中列出五组的项目索引（repo 名 + 链接），并附一键安装脚本 install-presets.ps1，可把全部项目的 .dsh 预设一键安装到 $DSH_HOME/.agent-presets/。

This repository is the **master integration entry** for all 31 Hermes Harness derivative projects for DeepSeek Harness (DSH): a complete project index (five groups, repo name + link), and a one-click installer (install-presets.ps1) that installs the .dsh preset of every project into $DSH_HOME/.agent-presets/.

## Quick start / 快速开始

在 PowerShell 7（pwsh）中，从本仓库目录执行一键安装：

    # 安装全部 31 个项目的预设到 $DSH_HOME\.agent-presets\
    .\install-presets.ps1

    # 只安装单个预设（例如本仓库）
    .\install-presets.ps1 -Only dsh-integration

    # 预览将要安装的内容，不实际复制
    .\install-presets.ps1 -DryRun

安装完成后重启 DeepSeek Harness，在会话预设列表中即可选择各项目预设。全部 31 个项目索引见下节。

## Catalog / 项目目录

### Agent OS 内核 / Kernel

| 1 | [`dsh-agent-os-runtime`](https://github.com/h565656445/dsh-agent-os-runtime) |
| 2 | [`dsh-agent-os-planning`](https://github.com/h565656445/dsh-agent-os-planning) |
| 3 | [`dsh-agent-os-scheduler`](https://github.com/h565656445/dsh-agent-os-scheduler) |
| 4 | [`dsh-agent-os-worker-protocol`](https://github.com/h565656445/dsh-agent-os-worker-protocol) |
| 5 | [`dsh-agent-os-observability`](https://github.com/h565656445/dsh-agent-os-observability) |
| 6 | [`dsh-agent-os-specs`](https://github.com/h565656445/dsh-agent-os-specs) |

### Harness 基础设施 / Infrastructure

| 7 | [`dsh-harness-core`](https://github.com/h565656445/dsh-harness-core) |
| 8 | [`dsh-graph-entry`](https://github.com/h565656445/dsh-graph-entry) |
| 9 | [`dsh-async-job`](https://github.com/h565656445/dsh-async-job) |
| 10 | [`dsh-file-identity`](https://github.com/h565656445/dsh-file-identity) |
| 11 | [`dsh-json-projection`](https://github.com/h565656445/dsh-json-projection) |
| 12 | [`dsh-manual-approval`](https://github.com/h565656445/dsh-manual-approval) |
| 13 | [`dsh-observation-writer`](https://github.com/h565656445/dsh-observation-writer) |
| 14 | [`dsh-provider-control`](https://github.com/h565656445/dsh-provider-control) |
| 15 | [`dsh-schema-negotiator`](https://github.com/h565656445/dsh-schema-negotiator) |
| 16 | [`dsh-upgrade-governance`](https://github.com/h565656445/dsh-upgrade-governance) |

### 规格与文档 / Specs & Docs

| 17 | [`dsh-harness-specs`](https://github.com/h565656445/dsh-harness-specs) |
| 18 | [`dsh-novel-specs`](https://github.com/h565656445/dsh-novel-specs) |
| 19 | [`dsh-architecture-guide`](https://github.com/h565656445/dsh-architecture-guide) |
| 20 | [`dsh-powershell-patterns`](https://github.com/h565656445/dsh-powershell-patterns) |
| 21 | [`dsh-json-schema-driven-dev`](https://github.com/h565656445/dsh-json-schema-driven-dev) |
| 22 | [`dsh-llm-agent-harness-guide`](https://github.com/h565656445/dsh-llm-agent-harness-guide) |

### 适配器 / Adapters

| 23 | [`dsh-short-story-engine`](https://github.com/h565656445/dsh-short-story-engine) |
| 24 | [`dsh-tutorial-video-state-machine`](https://github.com/h565656445/dsh-tutorial-video-state-machine) |
| 25 | [`dsh-governance-kernel`](https://github.com/h565656445/dsh-governance-kernel) |
| 26 | [`dsh-sports-pipeline`](https://github.com/h565656445/dsh-sports-pipeline) |
| 27 | [`dsh-motion-grammar`](https://github.com/h565656445/dsh-motion-grammar) |

### DSH 总集成 / Integration

| 28 | [`dsh-integration`](https://github.com/h565656445/dsh-integration) |
| 29 | [`dsh-presets-pack`](https://github.com/h565656445/dsh-presets-pack) |
| 30 | [`dsh-skills-pack`](https://github.com/h565656445/dsh-skills-pack) |
| 31 | [`dsh-starter-kit`](https://github.com/h565656445/dsh-starter-kit) |

## License / 许可证

[MIT](LICENSE)
