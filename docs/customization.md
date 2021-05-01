# Customization document

You can customize the document by providing pandoc with arguments specific for
the eisvogel template or for pandoc in general.  
To do this, just add them as parameters to the `pandoc` command in the
`Makefile` or as argument in the `document-config.md`.

To get an overview over the parameters, see:

- [Eisvogel template parameters](https://github.com/Wandmalfarbe/pandoc-latex-template/)
- [Pandoc markdown parameters](https://pandoc.org/MANUAL.html#pandocs-markdown)

You also can use latex as showed in the _Use Latex_ part. Nevertheless, the
options above are more recommendable to keep the files cleaner as not
everything regarding latex is supported.
