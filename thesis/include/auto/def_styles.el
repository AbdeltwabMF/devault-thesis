(TeX-add-style-hook
 "def_styles"
 (lambda ()
   (TeX-run-style-hooks
    "resources/colors"
    "resources/syntax/shared"
    "resources/syntax/solidity"
    "resources/syntax/javascript"
    "resources/syntax/bash"))
 :latex)

