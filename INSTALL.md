# Install Helix 1.0.0

## Fastest — one command

```bash
curl -fsSL https://github.com/gadkaridarshan/Helix/raw/main/install.sh | bash
```

Then **Developer: Reload Window**.

## Manual VSIX

1. Download [`helix-1.0.0.vsix`](./helix-1.0.0.vsix)
2. VS Code / Cursor → **Extensions** → **…** → **Install from VSIX…**
3. **Developer: Reload Window**

## From a git clone

```bash
git clone https://github.com/gadkaridarshan/Helix.git
cd Helix
bash install-extension.sh
```

## First run

1. Open a workspace folder (not an empty window)
2. **Helix: Manage Provider Logins** → OpenRouter for Helix Auto
3. `@helix` your request or Agent mode + Helix model
4. **Helix: Focus Kanban Board**

## Troubleshooting

| Issue | Fix |
|-------|-----|
| `cursor` / `code` not found | Install [Cursor](https://cursor.com) or [VS Code](https://code.visualstudio.com), or use manual VSIX install |
| Engine won't start | First launch downloads `helixd` from this repo — check network |
| No Helix models | **Helix: Manage Provider Logins** → OpenRouter |
