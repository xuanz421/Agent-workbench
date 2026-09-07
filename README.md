# Agent-Workbench

一个轻量、可复用的 Agent 工具箱，用于在不同项目和不同 Agent 客户端之间共享通用工作方法。

## 这个项目是做什么的

Agent-Workbench 为 Codex、ZCode、OpenCode 等编程 Agent 提供一套可复用的基础能力，使它们进入不同仓库时能够更快建立正确的工作方式。

核心原则很简单：

> **Workbench 提供方法，目标项目提供知识。**

通用工程方法放在这里；项目自己的架构、API、Schema、命名规范、领域知识和专项工作流留在对应项目中。

当某个项目需要更深的专项能力时，使用 `project-bootstrap` 读取该项目当前的源码、文档、测试和工具配置，再在目标项目内部生成真正有必要的专项规则或 Skill。

## 一个重要的文件边界

仓库根目录的 `AGENTS.md` **只用于维护 Agent-Workbench 本身**。

它不应该被复制、软链接或安装到其他项目中作为通用 Agent 规则。

真正可跨项目复用的行为规则位于 `rules/`，尤其是 `rules/core.md`。客户端适配器和安装脚本应该使用这些可复用规则与 Skills，而不是传播根目录的 `AGENTS.md`。

## 项目范围

Agent-Workbench 当前包含：

- 通用工程 Skills
- UI / 设计系统相关工作流
- 少量可复用 Agent 角色
- 跨项目规则与源码验证原则
- 用于生成项目本地配置的模板
- Codex、ZCode、OpenCode 等客户端的轻量适配层

它**不打算**成为：

- Agent 包管理器
- 所有项目共用的大型知识库
- 复杂的 preset / registry 系统
- 项目本地 `AGENTS.md`、`DESIGN.md` 或专项 Skill 的替代品
- 为了管理 Workbench 本身而不断膨胀的基础设施项目

## 目录结构

```text
Agent-Workbench/
├─ AGENTS.md          # 仅用于维护本仓库
├─ skills/            # 通用 / 半通用工作流
├─ agents/            # 少量可复用 Agent 角色
├─ rules/             # 可跨项目复用的行为规则
├─ prompts/           # 通用任务提示词
├─ templates/         # 项目本地配置模板
├─ adapters/          # 各 Agent 客户端适配层
└─ scripts/           # 安装 / 链接 / 同步脚本
```

## 核心工程 Skills

- `repository-analysis` — 分析陌生仓库结构与关键入口
- `project-bootstrap` — 理解目标项目，并按需生成项目本地专项能力
- `planning` — 在实现前建立可执行计划
- `systematic-debugging` — 系统性 Debug
- `root-cause-analysis` — 根因分析
- `code-review` — 代码审查
- `implementation-review` — 实现完成后的整体复查
- `refactoring` — 受控重构
- `test-strategy` — 选择合适的测试策略
- `dependency-analysis` — 依赖与升级影响分析
- `security-review` — 安全边界与攻击面检查
- `database-migrations` — 数据库迁移规划与风险控制
- `performance-investigation` — 基于测量的性能调查
- `api-contract-review` — API 合约与兼容性审查
- `release-readiness` — 发布前检查
- `data-pipeline-review` — 数据管线审查
- `documentation-sync` — 代码与文档同步检查
- `agent-experience-review` — 检查项目对 Agent 是否友好
- `skill-authoring` — 创建和维护 Workbench Skill

## UI / 前端 Skills

- `design-system-analysis` — 分析项目现有设计系统
- `ui-project-bootstrap` — 生成或更新项目本地 `DESIGN.md`
- `frontend-design` — 按项目视觉语言创建或重构 UI
- `ui-review` — 审查视觉层级、一致性、响应式、状态与可访问性

典型 UI 流程：

```text
进入目标前端项目
        ↓
design-system-analysis
        ↓
ui-project-bootstrap
        ↓
项目本地 DESIGN.md
        ↓
frontend-design
        ↓
ui-review
```

## 项目适配流程

`project-bootstrap` 是 Workbench 与具体项目之间最重要的桥梁。

```text
Agent-Workbench
      ↓
加载通用方法
      ↓
读取目标项目
      ↓
建立“已确认 / 合理推测 / 未知”的项目模型
      ↓
判断是否真的需要专项化
      ↓
能复用 Workbench 就直接复用
      ↓
只在必要时生成项目本地 Rules / Skills / Agents / DESIGN.md / AGENTS.md
```

`project-bootstrap` 不应该默认给每个项目生成一整套复杂 Agent 框架。如果现有通用能力已经足够，它在理解项目后就可以停止。

## 什么适合放进 Workbench

适合：

- Debug 与调查方法
- 规划、实现与审查工作流
- 测试和发布方法
- 源码与事实验证原则
- UI / 设计系统方法
- 通用数据库、API、依赖、安全、数据工作流
- 小型模板与客户端适配说明

不适合：

- 某个项目独有的 API 和符号
- 只属于一个代码库的 Schema
- 某个项目当前架构的快照
- 专项领域知识
- 某项目独有的命名规范
- 只在一个项目中成立的固定工作流
- 临时 Debug 记录或实现笔记

这些内容应该留在对应项目中。

## 当前方向

Workbench 应保持足够小，能够被人直接理解，也能够方便地复制、链接或加载到不同 Agent 环境中。

只有当某项内容确实能改善跨项目 Agent 工作时，才应该加入这里。

当前阶段：**v0.3 — 通用工程 + UI 工具箱，通过 `project-bootstrap` 在目标项目中进行专项化。**
