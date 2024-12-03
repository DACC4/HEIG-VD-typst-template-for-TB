# HEIG-VD typst template for TB
## Introduction
This template is a typst version of a LaTeX template for the travail de bachlor (TB) used at the HEIG-VD. Find the original LaTeX template here : https://github.com/sylvain-pasini/HEIG-VD-latex-template-for-TB

## Using
The template is split in 3 directories detailled bellow. The `main.typ` file contains all of the variables that you need to setup before starting to use the template.

### chapters
Contains the chapters of you report, you can add new chapters in this folder. Don't forget to import them in the `main.typ` file afterwards.

### sources
Contains the source files contained in your report, you can then include them with a custom function (still WIP).

### template
Contains all of the typst files for the template, macros and document style.

## Bibliography
Here's a link to the official documentation of the Hayagriva biliography format that is used in this template : https://github.com/typst/hayagriva/blob/main/docs/file-format.md

Only the entries used in the document will be printed in the bibliography page. Refer to the Typst official doc https://typst.app/docs/reference/model/bibliography/
