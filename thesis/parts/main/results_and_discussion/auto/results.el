(TeX-add-style-hook
 "results"
 (lambda ()
   (TeX-run-style-hooks
    "resources/figures/connect_result"
    "resources/figures/upload_result"
    "resources/figures/share_result"
    "resources/figures/gtmetrix"))
 :latex)

