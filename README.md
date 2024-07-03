A Quarto extension used with the [{surveydown} R package](https://github.com/jhelvy/surveydown) to generate markdown-based surveys.

See the [{surveydown}](https://jhelvy.github.io/surveydown/) package documentation for more details on how it is used with the {surveydown} package.

## Installation

To install this extension, run this in your terminal:

```bash
quarto install extension jhelvy/surveydown-ext
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Example

A simple example survey is included here as `example.qmd`. To try it out, make sure you have the {surveydown} package installed, then clone / download this repo, then open the `example.qmd` file in your favorite IDE. Launch a locally-run version of the survey by either pressing the "Run Document" button (e.g. in RStudio), or in the terminal run:

```bash
quarto serve example.qmd
```
