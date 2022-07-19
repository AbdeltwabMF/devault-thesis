(TeX-add-style-hook
 "def_resources"
 (lambda ()
   (TeX-run-style-hooks
    "resources/acronyms"
    "resources/glossary")
   (LaTeX-add-bibliographies
    "resources/bibliography"))
 :latex)

