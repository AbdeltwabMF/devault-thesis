(TeX-add-style-hook
 "introduction"
 (lambda ()
   (TeX-run-style-hooks
    "parts/main/introduction/background_and_motivation"
    "parts/main/introduction/problem_statement"))
 :latex)

