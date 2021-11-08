# Technology Simply Explained

An entry for [NaNoGenMo](https://nanogenmo.github.io/) 2021.

Diagrams generated via Processing.

Text cleaned via (neo)vim, regex and processed via shuf, glued with fish shell. Photo "illustrations" and "diagrams" were generated via Processing. 

More detailed notes on the specific text-cleanup commands in the corpus folder.

#### Compile New Book

Run, creating markdown document: 

```
fish ./explain-things-simply.fish > book.md
```

Compile to HTML book with pandoc:

```
pandoc --self-contained -s book.md -c path/to/stylesheet.css --metadata title="Technology Simply Explained" -o book.html
```

### Roadmap

The project is designed iteratively and tracked via the NaNoGenMo 2021 [github issue](https://github.com/NaNoGenMo/2021/issues/25). 

### Sources

[Gas and Oil Engines, Simply Explained](https://www.gutenberg.org/ebooks/27286) from Project Gutenberg CC0

[New Technologies](https://github.com/dariusk/corpora/blob/master/data/technology/new_technologies.json) CC0

[Machine images](https://flickr.com/search/?license=7%2C9%2C10&text=machines) from Flickr, CC0
