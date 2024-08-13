A Quarto extension used with the [{surveydown} R package](https://github.com/jhelvy/surveydown) to generate markdown-based surveys.

See the [surveydown](https://jhelvy.github.io/surveydown/) package documentation for more details on how it is used with the {surveydown} R package.

# Installation

## Using a template

We recommend starting with a template by using the {surveydown} R package. This will install the Quarto extension along with the other files needed for a surveydown survey:

```{r}
surveydown::sd_create_survey("path/to/folder")
```

This will create a folder located at `"path/to/folder"` with the following files:

- `_extensions`: A folder with the surveydown Quarto extension in it.
- `survey.Rproj`: An RStudio project file (helpful for working in RStudio).
- `survey.qmd`: A template survey you should edit.
- `server.R`: An R file containing the server components of the survey.
- `global.R`: An R file containing any global content needed for your survey (e.g. packages, data, etc.)

Launch a locally-run version of the survey by either pressing the "Run Document" button in RStudio, or in the terminal run:

```bash
quarto serve example.qmd
```

## Using the terminal

If you've already got a survey project setup and just need to install the Quarto extension, then this in your terminal:

```bash
quarto install extension jhelvy/surveydown-ext
```

This will install the extension under the `_extensions` subdirectory.

## Example

A simple example survey is included here as `survey.qmd` along with the `server.R` and `global.R` files.
