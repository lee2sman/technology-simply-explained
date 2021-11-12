# Technology Simply Explained

An entry for [NaNoGenMo](https://nanogenmo.github.io/) 2021.

Text cleaned via (neo)vim, regex and processed via shuf, glued with fish shell. Photo "illustrations" and "diagrams" were generated via Processing. 

More notes on the specific text-cleanup commands via neovim regexes in the corpus folder.

#### Compile New Book

Assuming all dependencies, to create a new book.pdf, just run:

```
fish ./build.fish
```

The main script is ```explain-things-simply.fish```, which compiles the book.md file, and then pandoc converts to pdf via pdflatex using tufte.css.

### Dependencies

* [Processing](https://processing.org/) creative coding IDE, language, framework (if generating new diagrams, images)
* [Fish shell](https://fishshell.com/) for running build scripts
* [pandoc](https://pandoc.org/) universal document converter
* [pdflatex](https://gist.github.com/rain1024/98dd5e2c6c8c28f9ea9d) for use with pandoc
* [shuf](https://man7.org/linux/man-pages/man1/shuf.1.html) permutation program

### Roadmap

The project is designed iteratively and tracked via the NaNoGenMo 2021 [github issue](https://github.com/NaNoGenMo/2021/issues/25). 

### Sources

[Gas and Oil Engines, Simply Explained](https://www.gutenberg.org/ebooks/27286) from Project Gutenberg CC0

[New Technologies](https://github.com/dariusk/corpora/blob/master/data/technology/new_technologies.json) CC0

[Machine images](https://flickr.com/search/?license=7%2C9%2C10&text=machines) from Flickr, CC0
