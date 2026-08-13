# Hermes Harness DSH 衍生项目目录 / CATALOG

> 本目录是全部 40 个 DeepSeek Harness（DSH）衍生项目的完整索引。
> 依据《Hermes Harness 开源衍生项目总规划》（PLAN.md，2026-08-14）整理；作者：h565656445。
> 各项目安装方式见 [README.md](README.md)；本文件只做索引，不含任何私有数据。

## 分组总览 / Group Overview

| 组 | 主题 | 数量 |
| --- | --- | --- |
| A | Agent OS 内核 | 5 |
| B | Harness 基础设施模块 | 10 |
| C | Worker 与业务管线 | 6 |
| D | 规格文档 | 3 |
| E | 契约与质量 | 4 |
| F | 适配器 | 6 |
| G | DSH 衍生总集成 | 4 |
| H | 教程与文档 | 4 |
| 合计 | 40 个项目 | 42 |

## A 组：Agent OS 内核（5 个）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 1 | dsh-agent-os-runtime | Agent OS 运行时内核：任务生命周期与状态机 | src/AgentOSRuntime.psm1 + runner/agent_os_runtime.ps1 + schemas/agent_os_runtime_task.schema.json + specs/Agent-OS-Runtime-Kernel-v0.1.md + tests/AgentOSRuntime.Tests.ps1 |
| 2 | dsh-agent-os-planning | Agent OS 规划循环：目标分解与计划生成 | src/AgentOSPlanning.psm1 + runner/agent_os_planner.ps1 + schemas/agent_os_plan.schema.json + specs/Agent-OS-Planning-Loop-v0.1.md + tests/AgentOSPlanningLoop.Tests.ps1 |
| 3 | dsh-agent-os-scheduler | Agent OS 任务图调度器：依赖编排与并发执行 | src/AgentOSScheduler.psm1 + runner/agent_os_scheduler.ps1 + schemas/agent_os_graph_*.schema.json + specs/Agent-OS-Task-Graph-Scheduler-v0.1.md + tests/AgentOSScheduler.Tests.ps1 |
| 4 | dsh-agent-os-worker-protocol | Agent OS 工作进程协议：worker 通信契约 | src/AgentOSWorkerProtocol.psm1 + runner/agent_os_worker.ps1 + schemas/agent_os_worker_*.schema.json + specs/Agent-OS-Worker-Protocol-v0.1.md + tests/AgentOSWorkerProtocol.Tests.ps1 |
| 5 | dsh-agent-os-observability | Agent OS 可观测性：成本与质量度量 | src/AgentOSObservability.psm1 + runner/agent_os_observability.ps1 + schemas/agent_os_observability_*.schema.json + specs/Agent-OS-Observability-Cost-Quality-v0.1.md + tests/AgentOSObservability.Tests.ps1 |

## B 组：Harness 基础设施模块（10 个）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 6 | dsh-harness-core | Hermes Harness 核心：模块总装与任务契约 | src/HermesHarness.psm1 + runner/harness_runner.ps1 + runner/harness_runner.md + core/*.md + config/*.json + schemas/task_contract.schema.json + tests/HermesHarness.Tests.ps1 + tests/HarnessConvergence.Tests.ps1 |
| 7 | dsh-graph-entry | GraphEntry 项目发现：注册表投影 | runner/graph_entry.ps1 + generated/project_registry.json + tests/GraphEntry.Tests.ps1 |
| 8 | dsh-async-job | 异步任务协议：后台任务与回执 | src/HermesAsyncJob.psm1 + runner/async_job_protocol.ps1 + schemas/schema_registry/v0.2/async-job-*.schema.json |
| 9 | dsh-file-identity | 文件身份：哈希指纹与内容寻址 | src/HermesFileIdentity.psm1 |
| 10 | dsh-json-projection | JSON 投影：结构化数据视图 | src/HermesJsonProjection.psm1 |
| 11 | dsh-manual-approval | 人工审批门禁：权限审批流程 | src/HermesManualApproval.psm1 |
| 12 | dsh-observation-writer | 观察写回：账本记录器 | src/HermesObservationWriter.psm1 |
| 13 | dsh-provider-control | 提供商控制：模型路由与注册表 | src/HermesProviderControl.psm1 + schemas/schema_registry/v0.2/provider-*.schema.json + config/provider_registry.json |
| 14 | dsh-schema-negotiator | Schema 协商：多版本契约兼容 | src/HermesSchemaNegotiator.psm1 + schemas/schema_registry/ |
| 15 | dsh-upgrade-governance | 升级治理：适配器升级清单 | src/HermesUpgradeGovernance.psm1 + schemas/schema_registry/v0.2/upgrade-*.schema.json + config/upgate_checklist.json + tests/HermesAdapterUpgrade.Tests.ps1 |

## C 组：Worker 与业务管线（6 个）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 16 | dsh-codex-worker | Codex Worker 接入：第三方 Codex 桥接 | runner/codex_worker.ps1 + schemas/codex_worker_result.schema.json + adapters/codex.md |
| 17 | dsh-novel-chapter-trial | 小说章节双轨试写：人工/自动双轨对比 | runner/novel_chapter_trial.ps1 + schemas/novel_chapter_*.schema.json + specs/Novel-Chapter-Dual-Track-Trial-v0.1.md + tests/NovelChapterTrial.Tests.ps1 |
| 18 | dsh-novel-video-pipeline | 小说转 AI 视频管线 | runner/novel_video_pipeline.ps1 + schemas/novel_video_*.schema.json + schemas/director_packet.schema.json + schemas/image_asset_manifest.schema.json + schemas/video_clip_manifest.schema.json + schemas/remotion_assembly_receipt.schema.json + specs/Novel-to-AI-Video-Pipeline-v0.1.md + tests/NovelVideoPipeline.Tests.ps1 + tests/NovelVideoSchemas.Tests.ps1 |
| 20 | dsh-portfolio-routing | 组合路由：任务类型与能力匹配 | tests/PortfolioRouting.Tests.ps1 + tests/AIEditingRouting.Tests.ps1 + core/router_rules.md + config/task_types.json + config/project_capabilities.json |
| 21 | dsh-meta-agents-bridge | Meta Agents SDK 桥接 | adapters/openai-agents-sdk-worker.v0.2.json + tests/MetaAgentsSdkBridge.Security.Tests.ps1 + schemas/schema_registry/v0.2/adapter-matrix.schema.json |

## D 组：规格文档（3 个）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 22 | dsh-agent-os-specs | Agent OS 规格集：5 份内核规格 | specs/Agent-OS-*.md（Runtime-Kernel / Planning-Loop / Task-Graph-Scheduler / Worker-Protocol / Observability） |
| 23 | dsh-harness-specs | Harness 核心规格：MVP 与 Worker | specs/Harness-MVP-v1.md + specs/Harness-Worker-v1.md |
| 24 | dsh-novel-specs | 小说管线规格集 | specs/Novel-*.md（2 份）+ specs/Solo-Company-Audit-Worker-v1.md |

## E 组：契约与质量（4 个）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 25 | dsh-task-contract | 任务契约：TaskContract 规范与 Schema | core/task_contract.md + schemas/task_contract.schema.json + contract_test/record_capture.ps1 |
| 26 | dsh-quality-gates | 质量门禁：质量、权限与核心规则 | core/quality_gates.md + core/permissions.md + core/core.md |
| 27 | dsh-schema-registry | Schema 注册表：40+ JSON Schema | schemas/schema_registry/ 全部（registry.json + registry.schema.json + v0.2/*） |
| 28 | dsh-worker-tests | Worker 测试套件 | tests/HermesHarness.Worker.Tests.ps1 + tests/HermesHarness.Tests.ps1 + tests/HermesHarness.SoloCompany.Tests.ps1 |

## F 组：适配器（6 个，仅可开源部分）

| # | Repo | 简介 | 来源（源架构产物） |
| --- | --- | --- | --- |
| 30 | dsh-short-story-engine | 短篇故事引擎：core/config/README | adapters/short_story_engine/（仅 core/、config/、README，排除正文/拆文库/创作档案/发布包/封面/data） |
| 31 | dsh-tutorial-video-state-machine | 教程视频状态机 | adapters/tutorial-video-state-machine/（README + .ps1 + schemas + tests） |
| 32 | dsh-governance-kernel | 治理内核：hermes-governance 可开源主体 | adapters/governance-kernel/ |
| 33 | dsh-sports-pipeline | 运动赛事管线：排除版权素材 | adapters/sports_pipeline/（排除 assets/、out/、ref_frames/、audio/） |
| 34 | dsh-motion-grammar | 运镜语法指南：自制十大类运镜语法 | 纯自制运镜语法指南，零第三方引用 |

## G 组：DSH 衍生总集成（4 个）

| # | Repo | 简介 | 说明 |
| --- | --- | --- | --- |
| 35 | dsh-integration | 总集成仓库：40 项目索引 + 一键安装 | 本仓库；含 install-presets.ps1 |
| 36 | dsh-presets-pack | Preset 打包合集 | preset.yml + agent.cordis.yml 合集 |
| 37 | dsh-skills-pack | Skill 打包合集与索引 | SKILL.md 合集与 40 个 skill id 索引 |
| 38 | dsh-starter-kit | 快速上手套件 | 双语上手 + 示例场景 |

## H 组：教程与文档（4 个）

| # | Repo | 简介 | 说明 |
| --- | --- | --- | --- |
| 39 | dsh-architecture-guide | 架构总览指南（双语） | 基于 core/ + specs/ 综合编写 |
| 40 | dsh-powershell-patterns | PowerShell 模块工程最佳实践 | 基于 src/ 提炼 |
| 41 | dsh-json-schema-driven-dev | JSON Schema 驱动开发方法论 | 基于 schemas/ 提炼 |
| 42 | dsh-llm-agent-harness-guide | LLM Agent 控制平面设计指南 | 双语 |

## 状态 / Status

- 索引依据：PLAN.md（2026-08-14）。
- 本目录不承载任何私有数据；各仓库是否已填充源码见对应仓库 README。
