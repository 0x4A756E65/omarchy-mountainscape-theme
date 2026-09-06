#!/usr/bin/env python3
"""Regenerate the color-only editor theme from colors.toml (requires Omarchy 4)."""
import json
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parent.parent
resolved = subprocess.check_output(
    ["omarchy-theme-color", "--file", str(root / "colors.toml"), "--all"], text=True
)
colors = dict(line.split("\t", 1) for line in resolved.splitlines())
template = (root / "tools/vscode-theme.json.tpl").read_text()
rendered = re.sub(r"\{\{\s*(\w+)\s*\}\}", lambda m: colors[m[1]], template)
assert "{{" not in rendered, "Unresolved template token"
json.loads(rendered)
(root / "vscode-theme.json").write_text(rendered)
print("Generated vscode-theme.json from colors.toml")
