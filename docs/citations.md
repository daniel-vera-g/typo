# Use citations/references

To use a citation in markdown, do the following:

1. Add citation to `bibtex` file. F.ex:

```bib
@article{item1,
  author = {Name of Author},
  title = {Title of paper},
  journal = {Journal of paper},
  year = 1999,
  note = {to appear},
}
```

<!-- markdownlint-disable  MD029 -->

2. Cite reference using the following Syntax in markdown:
   <!-- markdownlint-enable  MD029 -->

```md
A citation as footnote ^[@item1]

An inline citation: [@item1]
```

## Tipps

I recommend using [Zotero](https://www.zotero.org/) which gives you the abbility to:

1. Save your sources in a central point
2. Easily export citations in your desired format. For example in `BibLaTex` to be used with this template

## Set citation style

You can add a specific citation style by adding some config to the `document-config.md` file:

```yaml
citation-style: ieee # The set citation style refers to a locally named .csl file
nocite: | # Optional: List all the citations in the Bibliography section, even though they were not cited
  @*
```

NOTE: You'll need to have a locally named `ieee.csl` file with specified styles.  
Such `.csl` files can be found for example here: <https://www.zotero.org/styles>

For more information, see:

- <https://pandoc.org/MANUAL.html#citations>
- <https://pandoc.org/MANUAL.html#citation-rendering>
