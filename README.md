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

## Install

Pick your OS. Requires [Cursor](https://cursor.com) or [VS Code](https://code.visualstudio.com) with the `cursor` / `code` CLI on your PATH.

### macOS

```bash
curl -fsSL https://github.com/gadkaridarshan/Helix/raw/main/install.sh | bash
```

### Linux

```bash
curl -fsSL https://github.com/gadkaridarshan/Helix/raw/main/install.sh | bash
```

### Windows — PowerShell

```powershell
$vsix = "$env:TEMP\helix-1.0.0.vsix"
Invoke-WebRequest -Uri "https://github.com/gadkaridarshan/Helix/raw/main/helix-1.0.0.vsix" -OutFile $vsix
if (Get-Command cursor -ErrorAction SilentlyContinue) {
  cursor --install-extension $vsix --force
} elseif (Get-Command code -ErrorAction SilentlyContinue) {
  code --install-extension $vsix --force
} else {
  Write-Host "Neither cursor nor code found on PATH. Install manually from $vsix"
}
```

### Windows — Command Prompt

```bat
curl -fsSL -o "%TEMP%\helix-1.0.0.vsix" "https://github.com/gadkaridarshan/Helix/raw/main/helix-1.0.0.vsix"
where cursor >nul 2>&1 && cursor --install-extension "%TEMP%\helix-1.0.0.vsix" --force || where code >nul 2>&1 && code --install-extension "%TEMP%\helix-1.0.0.vsix" --force || echo Install manually: Extensions - Install from VSIX - %TEMP%\helix-1.0.0.vsix
```

### After any install

1. Open **Cursor** or **VS Code**
2. Run **Developer: Reload Window** from the Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`)

<details>
<summary>Other install options</summary>

**Manual VSIX:** download [`helix-1.0.0.vsix`](./helix-1.0.0.vsix) → Extensions → … → Install from VSIX

**Git clone (macOS / Linux / Git Bash / WSL):**
```bash
git clone https://github.com/gadkaridarshan/Helix.git && cd Helix && bash install-extension.sh
```

</details>

Full guide: [INSTALL.md](./INSTALL.md)

---

## Post-installation — add a provider key

Helix needs at least one LLM provider API key before Kanban orchestration can call models. **OpenRouter** is the recommended first key (powers Helix Auto Free / Cheapest / Best).

### OpenRouter (recommended)

1. Create an account at [openrouter.ai](https://openrouter.ai)
2. Open [openrouter.ai/settings/keys](https://openrouter.ai/settings/keys) → create an API key → copy it
3. **Free-model limits (OpenRouter):**
   - **50 free API calls per day** to free LLM models with no credit purchase
   - Add **$10 or more** in credits **once** (lifetime) → **1,000 free API calls per day** to free LLM models
4. Connect the key in your editor (below)

### In VS Code

1. Open a **workspace folder** (File → Open Folder…)
2. Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) → **Helix: Manage Provider Logins**
3. Choose **OpenRouter** → **Paste API key**
4. Paste the key and confirm — Helix stores it in VS Code Secret Storage

Optional: Command Palette → **Helix: Sign in to OpenRouter**

### In Cursor

1. Open a **workspace folder** (File → Open Folder…)
2. Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`) → **Helix: Manage Provider Logins**
3. Choose **OpenRouter** → **Paste API key**
4. Paste the key and confirm — Helix stores it in Cursor Secret Storage

Optional: Command Palette → **Helix: Sign in to OpenRouter**

Then pick a Helix Auto model in chat (see below) and try:

```
@helix Build a landing page with hero, features, and contact form
```

Open **Helix: Focus Kanban Board** to watch cards move.

---

## Helix Auto models

Three API-driven tiers pick the best OpenRouter model **per task** (coding, planning, general). Picks refresh on window reload, engine start, and **Helix: Update Auto Models**.

| Model in the picker | What it does | Best when |
|---------------------|--------------|-----------|
| **Helix Auto Free** | Best **free** OpenRouter models per task (default) | Trying Helix; staying on OpenRouter free-model quotas |
| **Helix Auto Cheapest** | Cheapest **paid** OpenRouter models per task (picker label: *Helix Auto Cheapest Not Free*) | You want low cost with paid routes |
| **Helix Auto Best** | Top-**quality** OpenRouter models per task | Quality matters more than cost |

**How to use:** In Copilot / Agent chat, open the model picker and choose one of the Helix Auto entries. Or run `@helix` — Helix prefers Auto Free when no model is selected.

You can also connect other providers (Anthropic, OpenAI, Google, Groq, Mistral, Cerebras, DeepSeek) via **Helix: Manage Provider Logins**.

---

## What you get

| | |
|---|---|
| 📋 **Kanban board** | Every `@helix` request becomes trackable cards (Backlog → Done) |
| ⚡ **Parallel agents** | Independent dev cards run at once — not one endless chat spiral |
| 🤝 **Copilot executes** | Helix plans and routes; Copilot Agent still edits, runs terminal, tests |
| 👀 **Card Monitor** | `show active cards` · watch · take over · transfer back with notes |

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
- At least one provider key — **OpenRouter** recommended for Helix Auto ([openrouter.ai](https://openrouter.ai))

---

## FAQ

**Marketplace?** We ship via GitHub — OS-specific install commands above.

**Cursor or VS Code?** Both. Same VSIX.

**Replace Copilot?** No. Helix orchestrates; Copilot Agent executes.

**Is it open source?** This repo is **release-only** (VSIX + `helixd` binaries). Architecture questions welcome in [Issues](https://github.com/gadkaridarshan/Helix/issues).

---

<p align="center">
  <sub>Private development happens elsewhere · <strong>main</strong> always ships the latest VSIX</sub>
</p>
