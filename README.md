# Helix

**Kanban for AI agents.** One prompt → requirement cards → parallel runs → Done column.

Helix orchestrates **Copilot Agent** and **Cursor** — you keep your editor; Helix adds a board, LLM routing, and parallel scoped delivery.

<p align="center">
  <a href="./helix-1.0.0.vsix"><strong>Download VSIX</strong></a>
  &nbsp;·&nbsp;
  <a href="./INSTALL.md">Install guide</a>
  &nbsp;·&nbsp;
  <a href="https://github.com/gadkaridarshan/Helix/issues">Feedback</a>
</p>

---

## Install in 10 seconds

**Cursor or VS Code** — run from any directory:

```bash
curl -fsSL https://github.com/gadkaridarshan/Helix/raw/main/install.sh | bash
```

Then **Developer: Reload Window**.

<details>
<summary>Other install options</summary>

**Manual VSIX:** download [`helix-1.0.0.vsix`](./helix-1.0.0.vsix) → Extensions → … → Install from VSIX

**Git clone:**
```bash
git clone https://github.com/gadkaridarshan/Helix.git && cd Helix && bash install-extension.sh
```

</details>

---

## What you get

| | |
|---|---|
| 📋 **Kanban board** | Every `@helix` request becomes trackable cards (Backlog → Done) |
| ⚡ **Parallel agents** | Independent dev cards run at once — not one endless chat spiral |
| 🤝 **Copilot executes** | Helix plans and routes; Copilot Agent still edits, runs terminal, tests |
| 👀 **Card Monitor** | `show active cards` · watch · take over · transfer back with notes |

---

## 60-second start

1. Open a **workspace folder** (not an empty window)
2. **Helix: Manage Provider Logins** → connect **OpenRouter** (Helix Auto Free works on free tier)
3. In chat: `@helix Build a landing page with hero, features, and contact form`
4. **Helix: Focus Kanban Board** — watch cards move through In Progress → Done

**Demo video:** add link here after recording (`docs/marketing/demo-script.md` in dev repo)

---

## Example

```
@helix Add user login with OAuth and a Kanban-friendly README
```

Helix plans cards, runs parallel work where safe, and keeps file changes scoped per card.

---

## Requirements

- VS Code **1.116+** or **Cursor** (compatible build)
- **GitHub Copilot** for Agent-mode tool execution
- **OpenRouter** API key for Helix Auto models ([free models available](https://openrouter.ai))

---

## FAQ

**Marketplace?** We ship via GitHub — one-command install above.

**Cursor or VS Code?** Both. Same VSIX, same `install.sh`.

**Replace Copilot?** No. Helix orchestrates; Copilot Agent executes.

**Is it open source?** This repo is **release-only** (VSIX + `helixd` binaries). Architecture questions welcome in [Issues](https://github.com/gadkaridarshan/Helix/issues).

---

<p align="center">
  <sub>Private development happens elsewhere · <strong>main</strong> always ships the latest VSIX</sub>
</p>
