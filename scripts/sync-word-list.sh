#!/bin/sh
# Sync local vscode spell check and textidote word list
jq  -r '.words[]' .vscode/cspell.json   > .github/mydict.txt