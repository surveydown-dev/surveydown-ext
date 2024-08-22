A Quarto extension used with the [{surveydown} R package](https://github.com/surveydown-dev/surveydown) to generate markdown-based surveys.

Visit [surveydown.org](https://surveydown.org/) for more details on generating surveys with surveydown.

## Installation

To install this extension, run this in your terminal:

```bash
quarto install extension surveydown-dev/surveydown-ext
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Example

A simple example survey is included here as `example.qmd`. To try it out, make sure you have the {surveydown} package installed, then clone / download this repo, then open the `example.qmd` file in your favorite IDE. Launch a locally-run version of the survey by either pressing the "Run Document" button (e.g. in RStudio), or in the terminal run:

```bash
quarto serve example.qmd
```

## Set your password

Every surveydown survey needs a password for securely storing your survey response data. To set your surveydown password, run this in your R console:

```r
sd_set_password("your_password")
```

You only need to set the password once for each survey project, and be careful not to leave a hard-coded password in your `example.qmd` file! This password **must** match the password used on your supabase database. See [here](https://surveydown.org/password) for more details.
