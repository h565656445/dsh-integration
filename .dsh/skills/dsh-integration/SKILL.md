---
name: dsh-integration
description: 定位与安装全部 31 个 Hermes Harness DSH 衍生项目：项目索引、CATALOG 目录与一键安装 / Locate and install all 31 Hermes Harness DSH derivative projects: catalog, index, and one-click installer
---

# Hermes DSH 总集成 / Hermes DSH Master Integration

本技能帮助用户在 31 个 DSH 衍生项目中快速定位目标仓库、解读 CATALOG.md 的分组结构，并指导使用 install-presets.ps1 完成一键安装。

This skill helps locate a target repository among the 42 DSH derivative projects, navigate the CATALOG.md group structure, and use install-presets.ps1 for one-click installation.

## When to use / 何时使用

需要查找某个 Hermes Harness 衍生项目、了解 A–H 分组、或批量安装预设到 $DSH_HOME/.agent-presets/ 时。

Use when you need to find a Hermes Harness derivative project, understand the A–H grouping, or bulk-install presets into $DSH_HOME/.agent-presets/.

## Workflow / 工作流

1. 读取 CATALOG.md 与 README 中的 31 项目索引表。
2. 按关键字定位项目（组 / 编号 / repo 名 / 一句话简介）。
3. 如需安装，运行 install-presets.ps1（可加 -Only 指定单个仓库）。
4. 验证 $DSH_HOME\.agent-presets\ 下对应预设目录是否就位。

## References / 参考

- 项目 README: 见仓库根目录
- 作者: h565656445 (GitHub)