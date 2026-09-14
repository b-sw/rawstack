#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
fail=0

need_frontmatter() {
  local file="$1"
  if ! head -n 1 "$file" | grep -qx -- '---'; then
    echo "missing YAML frontmatter: $file" >&2
    fail=1
  fi
}

while IFS= read -r -d '' file; do
  need_frontmatter "$file"
done < <(find "$root/skills" -name SKILL.md -print0)

if [[ -d "$root/agents" ]]; then
  while IFS= read -r -d '' file; do
    need_frontmatter "$file"
  done < <(find "$root/agents" -name '*.md' -print0)
fi

lint="$root/skills/asd-ste100/scripts/ste-lint.py"
if [[ -f "$lint" ]]; then
  python3 "$lint" \
    "$root/AGENTS.md" \
    "$root/CLAUDE.md" \
    "$root/README.md" \
    "$root/skills/mode/SKILL.md" \
    "$root/skills/prove-it/SKILL.md" \
    "$root/skills/reflect/SKILL.md" \
    "$root/agents/default.md"
fi

if [[ "$fail" -ne 0 ]]; then
  exit 1
fi

echo "check-skills: ok"
