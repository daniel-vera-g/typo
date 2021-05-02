# Language grammar and spelling check

1. Grammar and spelling is automatically checked by GitHub actions through
   [TeXtidote](https://github.com/sylvainhalle/textidote). It uses a dictionary
   for custom words located at `.github/mydict.txt`
2. For local writing in VS Code there are two main extensions:
   [vscode-spell-checker](https://github.com/streetsidesoftware/vscode-spell-checker)
   and
   [vscode-spellright](https://github.com/bartosz-antosik/vscode-spellright).
   Due to performance reasons, the former worked better for me.
   `vscode-spell-check` has its configuration and custom word list in
   `.vscode/cspell.json`.

_About word lists...:_

Sadly, the custom word lists from all three tools are not compatible. TeXtidote
uses a `.txt` file, vscode-spell-checker a `.json` and vscode-spellright an
`.dict` file.  
As I only add words to the word list during writing, I copy the words from the
vscode-spell-checker list (`.json`) to the one of TexTidote in the CI process
with a simple `jq` script. See line 24 [here](./..github/workflows/language.yml)
for more information.
