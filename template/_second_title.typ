#import "macros.typ": *

#let _second_title(TBtitle, TBacademicYears, TBdpt, TBfiliere, TBorient, TBauthor, TBsupervisor, TBindustryName, TBresumePubliable) = {
  set par(leading: 0.55em, spacing: 0.55em, justify: true)
  pagebreak(to: "odd")
  align(right)[
    #TBdpt\
    #TBfiliere\
    #TBorient\
    Étudiant : #TBauthor\
    Enseignant responsable : #TBsupervisor\
  ]

  v(10%)

  align(center)[Travail de Bachelor #TBacademicYears]
  v(1%)
  align(center)[#TBtitle]
  v(1%)
  hr()

  v(5%)
  [
    Nom de l’entreprise/institution\
    #v(1%)
    #TBindustryName
  ]

  v(3%)
  
  [
    *Résumé publiable*\
    #v(1%)
    #TBresumePubliable
  ]

  v(5%)
  
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [Étudiant :], [Date et lieu :], [Signature :],
    [#TBauthor], [#hr_dotted()], [#hr_dotted()]
  )
  v(2%)
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [Enseignant responsable :], [Date et lieu :], [Signature :],
    [#TBsupervisor], [#hr_dotted()], [#hr_dotted()]
  )
  v(2%)
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [Nom de l’entreprise/institution :], [Date et lieu :], [Signature :],
    [#TBindustryName], [#hr_dotted()], [#hr_dotted()]
  )
}