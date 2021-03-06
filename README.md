# arxiv-biblatex

The purpose of this Docker image to prepare LaTeX publications on
[arXiv](https://arxiv.org/). In particular, the use of
[BibLaTeX](https://ctan.org/pkg/biblatex) requires to provide intermediate
`*.bbl` files, which must be generated with compatible, generally outdated,
Biblatex/Biber versions.

Since manually maintaining compatible versions of Biblatex and Biber on recent
OSes requires some amount of work, the Docker approach may come in handy.

## Example usage

```
docker run -i -w '/data' -u `id -i`:`id -g` -v `pwd`:/data rauchrob/arxiv-biblatex rubber main.tex
```
