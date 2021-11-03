# Things Explained Simply

An entry for [NaNoGenMo](https://nanogenmo.github.io/) 2021.

Diagrams generated via Processing.

Text cleaned via (neo)vim, regex and processed via shuf, glued with fish. More detailed notes on the specific commands in the corpus folder.

#### Compile New Book

Run, creating markdown document: 

```
fish ./explain-things-simply.fish > book.md
```

Compile to book with pandoc:

```
pandoc --self-contained -s book.md -c path/to/stylesheet.css --metadata title="Technology Simply Explained" -o book.html
```

### Sources

[Gas and Oil Engines, Simply Explained](https://www.gutenberg.org/ebooks/27286) CC0

[New Technologies](https://github.com/dariusk/corpora/blob/master/data/technology/new_technologies.json) CC0
