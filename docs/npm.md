# Use npm

If you don't want to install `prettier` and `markdownlint` globally, you can install them locally:

1. `npm init -y`
2. `npm i markdownlint prettier`
3. You can configure an npm script. For example:

```json
[...]
  "scripts": {
    "gen-pdf": "make",
    "gen-docs": "make docx",
    "lint": "markdownlint '**/*.md' --ignore node_modules",
    "fix": "markdownlint -f **/*.md",
    "format": "prettier --write",
    "sync-wl": "./scripts/sync-word-list.sh"
  },
[...]
```
