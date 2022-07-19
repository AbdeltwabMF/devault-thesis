(TeX-add-style-hook
 "def_commands"
 (lambda ()
   (TeX-add-symbols
    '("namedfigure" 4)
    "nobgpls"
    "code"
    "blankpage")
   (LaTeX-add-labels
    "#2"))
 :latex)

