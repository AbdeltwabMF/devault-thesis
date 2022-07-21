(TeX-add-style-hook
 "usecase_modeling"
 (lambda ()
   (TeX-run-style-hooks
    "resources/figures/dapp_usecases_diagram")
   (LaTeX-add-labels
    "tab:useCaseConnect"
    "tab:useCaseUpload"
    "tab:useCaseDownload"
    "tab:useCaseShare"
    "tab:useCaseDelete"
    "tab:useCaseDisconnect"))
 :latex)

