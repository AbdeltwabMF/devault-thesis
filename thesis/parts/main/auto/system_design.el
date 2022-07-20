(TeX-add-style-hook
 "system_design"
 (lambda ()
   (TeX-run-style-hooks
    "parts/main/system_design/introduction"
    "parts/main/system_design/implementation"
    "parts/main/system_design/testing"))
 :latex)

