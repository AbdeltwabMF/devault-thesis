(TeX-add-style-hook
 "methodology"
 (lambda ()
   (TeX-run-style-hooks
    "parts/main/background_materials/methodology/usecase_modeling"
    "parts/main/background_materials/methodology/class_diagram"
    "parts/main/background_materials/methodology/sequence_diagram"
    "parts/main/background_materials/methodology/activity_diagram"))
 :latex)
