(TeX-add-style-hook
 "sequence_diagram"
 (lambda ()
   (TeX-run-style-hooks
    "resources/figures/connect_sequence_diagram"
    "resources/figures/upload_files_sequence_diagram"
    "resources/figures/download_files_sequence_diagram"
    "resources/figures/share_files_sequence_diagram"
    "resources/figures/delete_files_sequence_diagram"))
 :latex)

