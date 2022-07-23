(TeX-add-style-hook
 "devault"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "aspectratio=169" "usenames" "dvipsnames" "pdftex")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("ccicons" "scale=2")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "syntax"
    "beamer"
    "beamer10"
    "listings"
    "xcolor"
    "multicol"
    "media9"
    "siunitx"
    "ccicons"
    "tabularx"
    "lmodern"
    "anyfontsize"
    "fontawesome5"
    "booktabs"
    "appendixnumberbeamer"
    "csquotes"
    "pgfplots"
    "tikz"
    "xspace"
    "amsmath"
    "amssymb")
   (TeX-add-symbols
    '("Item" 1)
    "themename")
   (LaTeX-add-bibliographies
    "biblio")
   (LaTeX-add-xcolor-definecolors
    "charcoal"
    "champagne"
    "dimgray"
    "flax"
    "lavendergray"
    "lightslategray"
    "egyptianblue"
    "ballblue"
    "greencssgreen"
    "eggshell"
    "lava"
    "lavenderindigo"
    "mediumred-violet"
    "black"
    "forestgreen"
    "harvardcrimson"))
 :latex)

