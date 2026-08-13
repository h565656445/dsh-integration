# dsh-integration

<!-- DeepSeek Harness 衍生声明 -->
> **DeepSeek Harness 个人适配声明（Personal Adaptation Notice）**
>
> 本项目是 [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) 的**个人适配产物（personal adaptation）**，**并非 DeepSeek Harness 官方文件（not an official DeepSeek Harness file）**。随附功能、使用说明与个人产物，可与 DeepSeek Harness 搭配使用，也可独立使用。
>
> This project is a **personal adaptation** for DeepSeek Harness, and is **NOT an official DeepSeek Harness file**. It is bundled with features, documentation, and personal artifacts, and can be used alongside DeepSeek Harness or standalone.

**作者 / Author**: [h565656445](https://github.com/h565656445)

**合作 / Collaboration**: 本人经济拮据，如有项目可以一起合作，欢迎联系。微信：\`wohaishihenshuaide\`。I am currently financially struggling; if you have projects, let's collaborate. WeChat: \`wohaishihenshuaide\`.


---

## 用途 / What this is for

总集成仓库：40 项目索引目录、一键安装脚本与 DeepSeek Harness 接入导航，是所有衍生的着陆页。

Master integration repo: the 40-project catalog, one-click install script and DeepSeek Harness onboarding.

---
## Hermes Harness DSH Master Integration / Hermes Harness DSH 总集成

本仓库是 Hermes Harness 全部 40 个 DeepSeek Harness（DSH）衍生项目的**总集成入口**：集中列出 A–H 八组的项目索引（repo 名 + 一句话简介）、提供 CATALOG.md 完整目录，并附一键安装脚本 install-presets.ps1，可把全部项目的 .dsh 预设一键安装到 $DSH_HOME/.agent-presets/。

This repository is the **master integration entry** for all 40 Hermes Harness derivative projects for DeepSeek Harness (DSH): a complete project index (groups A–H, repo name + one-line description), a full CATALOG.md directory, and a one-click installer (install-presets.ps1) that installs the .dsh preset of every project into $DSH_HOME/.agent-presets/.

## Features / 功能

- 40 个项目总索引（A–H 组：repo 名 + 一句话简介）/ Master index of all 40 projects (groups A–H: repo name + one-line description)
- CATALOG.md 完整目录（含分组、简介与来源映射）/ Complete catalog in CATALOG.md (groups, descriptions, source mapping)
- install-presets.ps1 一键安装全部预设（PowerShell 7）/ One-click installer for all presets (PowerShell 7)
- 每个项目的 .dsh 预设结构说明 / Per-project .dsh preset structure notes
- 全部项目均为双语（中文/English）文档 / All projects ship bilingual (zh/en) documentation
- 与 DeepSeek Harness 无缝搭配：复制即用 / Seamless with DeepSeek Harness: copy and use

## What's inside / 目录结构

    dsh-integration/
    ├── README.md              # 总 README（双语 + 40 项目索引表）
    ├── CATALOG.md             # 完整目录（分组、repo、简介、来源映射）
    ├── install-presets.ps1    # 一键安装脚本（PowerShell 7）
    ├── LICENSE                # MIT
    └── .dsh/
        ├── preset.yml         # 本仓库的 Agent 预设元数据
        ├── agent.cordis.yml   # Cordis 组装（基于 standard，persona 已定制）
        ├── README.md          # 本仓库 .dsh 接入说明（双语）
        └── skills/dsh-integration/SKILL.md

## Quick start / 快速开始

在 PowerShell 7（pwsh）中，从本仓库目录执行一键安装：

    # 安装全部 40 个项目的预设到 $DSH_HOME\.agent-presets\
    .\install-presets.ps1

    # 只安装单个预设（例如本仓库）
    .\install-presets.ps1 -Only dsh-integration

    # 预览将要安装的内容，不实际复制
    .\install-presets.ps1 -DryRun

安装完成后重启 DeepSeek Harness，在会话预设列表中即可选择各项目预设。全部 40 个项目索引见下节与 CATALOG.md。

## Catalog / 项目目录

> 完整目录见 [CATALOG.md](CATALOG.md)。下表为全部 40 个 DSH 衍生项目索引（A–H 组）。

### A 组：Agent OS 内核（5 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 1 | dsh-agent-os-runtime | Agent OS 运行时内核：任务生命周期与状态机 / Runtime kernel: task lifecycle & state machine |
| 2 | dsh-agent-os-planning | Agent OS 规划循环：目标分解与计划生成 / Planning loop: goal decomposition & planning |
| 3 | dsh-agent-os-scheduler | Agent OS 任务图调度器：依赖编排与并发执行 / Task-graph scheduler: dependency orchestration & concurrency |
| 4 | dsh-agent-os-worker-protocol | Agent OS 工作进程协议：worker 通信契约 / Worker protocol: worker communication contract |
| 5 | dsh-agent-os-observability | Agent OS 可观测性：成本与质量度量 / Observability: cost & quality metrics |

### B 组：Harness 基础设施模块（10 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 6 | dsh-harness-core | Hermes Harness 核心：模块总装与任务契约 / Core: module assembly & task contract |
| 7 | dsh-graph-entry | GraphEntry 项目发现：注册表投影 / GraphEntry project discovery: registry projection |
| 8 | dsh-async-job | 异步任务协议：后台任务与回执 / Async job protocol: background jobs & receipts |
| 9 | dsh-file-identity | 文件身份：哈希指纹与内容寻址 / File identity: hash fingerprints & content addressing |
| 10 | dsh-json-projection | JSON 投影：结构化数据视图 / JSON projection: structured data views |
| 11 | dsh-manual-approval | 人工审批门禁：权限审批流程 / Manual approval gate: permission approval flow |
| 12 | dsh-observation-writer | 观察写回：账本记录器 / Observation writer: ledger recorder |
| 13 | dsh-provider-control | 提供商控制：模型路由与注册表 / Provider control: model routing & registry |
| 14 | dsh-schema-negotiator | Schema 协商：多版本契约兼容 / Schema negotiator: multi-version contract compatibility |
| 15 | dsh-upgrade-governance | 升级治理：适配器升级清单 / Upgrade governance: adapter upgrade checklist |

### C 组：Worker 与业务管线（6 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 16 | dsh-codex-worker | Codex Worker 接入：第三方 Codex 桥接 / Codex worker: third-party Codex bridge |
| 17 | dsh-novel-chapter-trial | 小说章节双轨试写：人工/自动双轨对比 / Novel chapter dual-track trial |
| 18 | dsh-novel-video-pipeline | 小说转 AI 视频管线 / Novel-to-AI-video pipeline |
| 20 | dsh-portfolio-routing | 组合路由：任务类型与能力匹配 / Portfolio routing: task-type & capability routing |
| 21 | dsh-meta-agents-bridge | Meta Agents SDK 桥接 / Meta Agents SDK bridge |

### D 组：规格文档（3 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 22 | dsh-agent-os-specs | Agent OS 规格集：5 份内核规格 / Agent OS spec set (5 kernel specs) |
| 23 | dsh-harness-specs | Harness 核心规格：MVP 与 Worker / Harness core specs: MVP & Worker |
| 24 | dsh-novel-specs | 小说管线规格集 / Novel pipeline specs |

### E 组：契约与质量（4 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 25 | dsh-task-contract | 任务契约：TaskContract 规范与 Schema / Task contract: spec & schema |
| 26 | dsh-quality-gates | 质量门禁：质量、权限与核心规则 / Quality gates: quality, permissions & core rules |
| 27 | dsh-schema-registry | Schema 注册表：40+ JSON Schema / Schema registry: 40+ JSON Schemas |
| 28 | dsh-worker-tests | Worker 测试套件 / Worker test suites |

### F 组：适配器（6 个，仅可开源部分）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 30 | dsh-short-story-engine | 短篇故事引擎：core/config/README / Short story engine: core/config/README |
| 31 | dsh-tutorial-video-state-machine | 教程视频状态机 / Tutorial video state machine |
| 32 | dsh-governance-kernel | 治理内核：hermes-governance 可开源主体 / Governance kernel |
| 33 | dsh-sports-pipeline | 运动赛事管线：排除版权素材 / Football pipeline: no copyrighted assets |
| 34 | dsh-motion-grammar | 运镜语法指南：自制十大类运镜语法 / Camera-motion grammar: self-authored ten categories |

### G 组：DSH 衍生总集成（4 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 35 | dsh-integration | 总集成仓库：40 项目索引 + 一键安装 / Master integration: catalog & one-click install |
| 36 | dsh-presets-pack | Preset 打包合集 / Presets pack |
| 37 | dsh-skills-pack | Skill 打包合集与索引 / Skills pack & index |
| 38 | dsh-starter-kit | 快速上手套件 / Starter kit |

### H 组：教程与文档（4 个）

| # | Repo | 一句话简介 |
| --- | --- | --- |
| 39 | dsh-architecture-guide | 架构总览指南（双语）/ Architecture guide (bilingual) |
| 40 | dsh-powershell-patterns | PowerShell 模块工程最佳实践 / PowerShell module engineering patterns |
| 41 | dsh-json-schema-driven-dev | JSON Schema 驱动开发方法论 / JSON Schema-driven development |
| 42 | dsh-llm-agent-harness-guide | LLM Agent 控制平面设计指南 / LLM agent control-plane design guide |

## DeepSeek Harness 衍生 / DSH Derivative

本项目附带 DeepSeek Harness 衍生包，位于 .dsh/ 目录：

- preset.yml — Agent 预设元数据
- agent.cordis.yml — Cordis 组装（基于 standard 预设，persona 已定制）
- skills/dsh-integration/SKILL.md — 项目专属技能（skill）

安装与接入方式见 [.dsh/README.md](.dsh/README.md)（双语）。

## License / 许可证

[MIT](LICENSE)
