(TeX-add-style-hook
 "introduction"
 (lambda ()
   (TeX-run-style-hooks
    "parts/main/introduction/background_and_motivation"
    "parts/main/introduction/problem_statement"
    "parts/main/introduction/aim_of_the_project"
    "parts/main/introduction/organization_of_the_thesis"))
 :latex)

