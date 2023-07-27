# Stlite Extension For Quarto

_TODO_: Add a short description of your extension.

## Installing

```bash
quarto add whitphx/quarto-stlite
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Put this in the header of your document, or in the `_quarto.yml` file:

```yaml
filters:
  - whitphx/stlite
```

Then you can put the code for an stlite (Streamlit) application in a code block marked with `{stlite-python}`.


````markdown
---
title: stlite in Quarto example
format: html
filters:
  - whitphx/stlite
---

This is an stlite application embedded in a Quarto doc.

```{stlite-python}
import streamlit as st

st.title("Hello Quarto!")
```
````

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).
