# Use citations/references 📖

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

For more information, see:

- <https://pandoc.org/MANUAL.html#citations>
- <https://pandoc.org/MANUAL.html#citation-rendering>
