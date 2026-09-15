# Install Helix 1.0.0

## Command-line install by OS

Requires [Cursor](https://cursor.com) or [VS Code](https://code.visualstudio.com) with the `cursor` / `code` CLI on your PATH.

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

### Reload

In Cursor or VS Code, open the Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`) → **Developer: Reload Window**.

---

## Manual VSIX

1. Download [`helix-1.0.0.vsix`](./helix-1.0.0.vsix)
2. VS Code / Cursor → **Extensions** → **…** → **Install from VSIX…**
3. **Developer: Reload Window**

## From a git clone

**macOS / Linux / Git Bash / WSL:**

```bash
git clone https://github.com/gadkaridarshan/Helix.git
cd Helix
bash install-extension.sh
```

---

## Post-installation — add a provider key

Helix needs at least one LLM provider API key. **OpenRouter** is the recommended first connection (powers Helix Auto Free / Cheapest / Best).

### OpenRouter example

1. Sign up at [openrouter.ai](https://openrouter.ai)
2. Create a key at [openrouter.ai/settings/keys](https://openrouter.ai/settings/keys)
3. **Free-model limits:**
   - **50 free API calls/day** to free LLM models (no credit purchase required)
   - Add **$10 or more** in credits **at least once** → **1,000 free API calls/day** to free LLM models
4. Paste the key into Helix (steps below)

### VS Code steps

1. **File → Open Folder…** — open a workspace (not an empty window)
2. Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) → **Helix: Manage Provider Logins**
3. Select **OpenRouter** → paste your API key
4. Confirm — the key is stored in VS Code Secret Storage

Shortcut: **Helix: Sign in to OpenRouter**

### Cursor steps

1. **File → Open Folder…** — open a workspace (not an empty window)
2. Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`) → **Helix: Manage Provider Logins**
3. Select **OpenRouter** → paste your API key
4. Confirm — the key is stored in Cursor Secret Storage

Shortcut: **Helix: Sign in to OpenRouter**

---

## Helix Auto Free, Cheapest, and Best

After OpenRouter is connected, choose a Helix Auto model in the chat model picker:

| Model | Purpose |
|-------|---------|
| **Helix Auto Free** | Best free OpenRouter models per task (default for trying Helix) |
| **Helix Auto Cheapest** | Cheapest paid OpenRouter models per task (shown as *Helix Auto Cheapest Not Free* in the picker) |
| **Helix Auto Best** | Highest-quality OpenRouter models per task |

Helix refreshes these picks on reload, engine start, and **Helix: Update Auto Models**.

**First prompt:**

```
@helix Add a contact form to this site with validation
```

Then **Helix: Focus Kanban Board** — watch cards move Backlog → Done.

---

## Troubleshooting

| Issue | Fix |
|-------|-----|
| `cursor` / `code` not found | Install [Cursor](https://cursor.com) or [VS Code](https://code.visualstudio.com), ensure the CLI is on PATH, or use manual VSIX install |
| Engine won't start | First launch downloads `helixd` from this repo — check network |
| No Helix models / API errors | **Helix: Manage Provider Logins** → OpenRouter; check free-model daily limits |
| Windows PowerShell blocked scripts | Use the `Invoke-WebRequest` install block above (no `install.sh` piping) |
