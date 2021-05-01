.PHONY: build

FILES=`cat index.txt`

build:
	pandoc document-config.md -o document.pdf --from markdown --to latex --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`"  --citeproc $(FILES)
eisvogel:
	pandoc document-config.md -o document.pdf --from markdown --to latex --template eisvogel --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`"  --citeproc $(FILES)
docx:
	pandoc document-config.md -o document.docx --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`"  --citeproc $(FILES)
lint:
	markdownlint '**/*.md' --ignore node_modules
fix:
	markdownlint -c './scripts/.markdownlintrc' -p './scripts/.markdownlintignore' -f **/*.md
format:
	prettier -c './scripts/.prettierrc' --write '**/*.md'
svg-to-pdf:
	./scripts/svg-to-pdf.sh
sync-wl:
	./scripts/sync-word-list.sh
check-lang:
  textidote --dict .github/mydict.txt --check en **/*.md