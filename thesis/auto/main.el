(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "12pt")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "headers"
    "include/def_imports"
    "include/def_commands"
    "include/def_resources"
    "include/def_styles"
    "parts"
    "parts/title"
    "parts/foreword"
    "parts/foreword/letter_of_approval"
    "parts/foreword/statement"
    "parts/foreword/pre-acknowledgements"
    "parts/foreword/acknowledgements"
    "parts/foreword/abstract"
    "parts/foreword/table_of_contents"
    "parts/main"
    "parts/main/introduction"
    "parts/main/solving_p_equals_np"
    "parts/main/greatest_common_divisor"
    "parts/main/conclusion"
    "parts/afterword"
    "parts/afterword/lists"
    "parts/afterword/glossaries"
    "parts/afterword/lists/list_of_figures"
    "parts/afterword/lists/list_of_tables"
    "parts/afterword/references"
    "report"
    "rep12"))
 :latex)

