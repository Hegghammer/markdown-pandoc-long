# Markdown and Pandoc for long texts

This repository contains sample files for producing long texts --- such as academic books and reports --- with Markdown and Pandoc on Linux. In some sense it's a very simplified version of the Bookdown workflow in R. The scripts should need only minor modifications to work on Mac and Windows.

It's currently set up for Chicago17-style full citations; for other citation styles, add the corresponding `.csl` files to the resource folder and tweak the shell script accordingly. The scripts can be expanded in other ways, for example with the [pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/) for internal cross-references.

## Contents

1. A folder called `pandoc_resources` with all the templates Pandoc needs to produce nice-looking `.docx` and `.pdf` documents. These templates can be reused for other projects, so consider placing the folder somewhere central on your home directory.

2. Sample input files (`metadata.yml`, `chapter1.md`, `chapter2.md`, `chapter3.md`) for illustration only. Replace these with your own content.

3. Shell scripts (`pdf.sh`, `word.sh`) to compile the manuscript. Tweak them to your particular setup. More details in the script comments.

4. Sample output files (`manuscript.pdf`, `manuscript.docx`).

## Requirements

- [Pandoc](https://pandoc.org)
- [Latex](https://www.latex-project.org)
- [Libre Office Writer](https://www.libreoffice.org/discover/writer/)
- [Okular](https://okular.kde.org) or some other PDF viewer

## Inspiration
- [pianomanfrazier](https://gitlab.com/pianomanfrazier/pandoc-markdown-book)
- [hieplpvip](https://github.com/hieplpvip/pandoc-markdown-book)
- [TheFern2](https://github.com/TheFern2/markdown-book)
