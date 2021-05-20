.PHONY: build eisvogel docx lint fix format sync-wl check-lang lang-report

FILES=`cat index.txt`
# We do this, to ignore the document config and other not needed files for language checking
LANG_FILES:=$(shell find ./ -name "*.md" ! -name document-config.md  ! -path "./.github/**/*.md")

build:
	pandoc --pdf-engine=xelatex document-config.md -o document.pdf --from markdown --to latex --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`"  --citeproc $(FILES)
eisvogel:
	pandoc document-config.md -o document.pdf --from markdown --to latex --template eisvogel --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`" --citeproc $(FILES)
docx:
	pandoc document-config.md -o document.docx --listings --toc --top-level-division="chapter" --metadata date="`date -u '+%Y-%m-%d'`"  --citeproc $(FILES)
lint:
	markdownlint  -c './scripts/.markdownlintrc' -p './scripts/.markdownlintignore' '**/*.md'
fix:
	markdownlint -c './scripts/.markdownlintrc' -p './scripts/.markdownlintignore' -f **/*.md
format:
	prettier -c './scripts/.prettierrc' --ignore-path './scripts/.prettierignore' --write '**/*.md'
sync-wl:
	./scripts/sync-word-list.sh
check-lang:
	textidote --dict .github/mydict.txt --check en $(LANG_FILES)
lang-report:
	textidote --dict .github/mydict.txt --output html --check en $(LANG_FILES) > lang-report.html
