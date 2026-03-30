# GSOC: Dynamic Documentation Test Package

This repository contains a mock R package created as a qualification test for the **Google Summer of Code: Multilingual documentation of R packages** project.

It specifically tackles the challenge of **dynamic content and macros** in R documentation using `roxygen2`, addressing both the Medium and Hard test requirements outlined by the project mentors.

## Test Objectives Completed

### Medium Test: Global Variable Integration

Instead of hardcoding the submission deadline into the `.Rd` files, the deadline is stored as a global variable within the package environment (`R/globals.R`). The mock function `submit_proposal()` evaluates the current system date against this single source of truth to return `TRUE` or `FALSE`.

### Hard Test: Dynamic `roxygen2` Macros

Static translation modules struggle with dynamically generated content. To solve this, this package utilizes R's `\Sexpr{}` macros to evaluate code at different stages of the documentation parsing process:

* **Install-Time Evaluation (`stage=install`):** Fetches the deadline variable dynamically when the package is installed, preventing the need to re-document the package with `roxygen2` every time the variable changes.
* **Render-Time Evaluation (`stage=render`):** Computes the exact number of days remaining until the deadline at the exact moment the user searches the help file (`?submit_proposal`), providing a real-time countdown string.

## Installation

To see the dynamic macros in action, you must fully install the package locally. Standard loading (e.g., `devtools::load_all()`) bypasses the install and render evaluation stages.

You can install this package directly from GitHub using the `devtools` package:

```r
devtools::install_github("yourusername/GSOC")
```
