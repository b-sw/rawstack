based on the [pstack](https://github.com/cursor/plugins/tree/main/pstack) by [Lauren Tan](https://x.com/poteto)

## Install

The repo works with any agent tool that reads `AGENTS.md` and skill folders.
Copy it into the config directory of your tool.

Claude Code (`CLAUDE.md` imports `AGENTS.md`):

```bash
mkdir -p ~/.claude && cp -R AGENTS.md CLAUDE.md agents skills ~/.claude/
```

Codex (`config.toml` holds the Codex settings):

```bash
mkdir -p ~/.codex && cp -R AGENTS.md config.toml agents skills ~/.codex/
```

Other tools: copy `AGENTS.md`, `agents`, and `skills` into the config directory of the tool.
`AGENTS.md` tells the agent to resolve skill paths against that directory.
