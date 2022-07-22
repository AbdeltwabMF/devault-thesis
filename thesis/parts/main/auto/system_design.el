(TeX-add-style-hook
 "system_design"
 (lambda ()
   (TeX-run-style-hooks
    "parts/main/system_design/introduction"
    "parts/main/system_design/architecture"
    "parts/main/system_design/tools_and_tech"
    "parts/main/system_design/implementation"))
 :latex)

