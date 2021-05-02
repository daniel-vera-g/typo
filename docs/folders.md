# Use folders

It is possible to separate concerns and use different folders for different
topics/chapters. This probably helps to keep an overview and be more
structured/organized as putting everything in one file.  
For this, you need to:

1. Create a new file. To group same files together, you could use folders
2. Add relative path to file in the `./index.txt` file like f.ex:

```txt
...
folder1/file1.md
folder2/file2.md
file3.md
...
```

With this way, you can also structure your generated PDF/docx/... document. In
the example above, the contents of file1 would come before the ones of file2.
