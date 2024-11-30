#let _title(TBtitle, TBsubtitle, TBacademicYears, TBdpt, TBfiliere, TBorient, TBauthor, TBsupervisor, TBindustryContact, TBindustryName, TBindustryAddress, confidential) = {
  columns(2, [
    #image("images/logo_heig-vd-2020.svg", width: 40%)
    #colbreak()
    #par(justify: false)[#align(right, [
      #TBdpt
      #v(1%)
      #TBfiliere
      #v(1%)
      #TBorient
    ])]
  ])
  
  v(20%)
  
  align(center, [#text(size: 14pt, [*Travail de Bachelor*])])
  v(4%)
  align(center, [#text(size: 20pt, [*#TBtitle*])])
  v(1%)
  align(center, [#text(size: 16pt, [#TBsubtitle])])

  v(8%)
  if confidential{
    align(center, [#text(size: 14pt, [*Confidentiel*])])
  }else{
    v(14pt)
  }
  v(8%)

  align(left, [#block(width: 70%, [
    #table(
      stroke: none,
      columns: (50%, 50%),
      [*Étudiant*], [*#TBauthor*],
      [*Enseignant responsable*], [#TBsupervisor],
      [*Entreprise mandante*], [
        #TBindustryContact \
        #TBindustryName \
        #TBindustryAddress
      ],
      [*Année académique*], [#TBacademicYears]
    )
  ])])

  align(bottom + right, [
    Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")
  ])
}