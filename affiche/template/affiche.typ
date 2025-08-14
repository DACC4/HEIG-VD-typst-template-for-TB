#let affiche(
  content, 
  title: "", 
  dpt: "", 
  filiere_short: "", 
  filiere_long: "", 
  orientation: "", 
  author: "", 
  supervisor: "", 
  industryContact: "", 
  industryName: ""
  ) = {
  // Style
  set heading(numbering: none)
  set text(font: "Arial", size: 14pt)

  show heading.where(
    level: 1
  ): it => [
    #v(0.4em)
    #it
    #v(0.4em)
  ]

  // Set global page layout
  set page(
    paper: "a3",
    numbering: none,
    margin: (
      top: 35pt,
      bottom: 25pt,
      x: 35pt
    )
  )
  set par(leading: 0.55em, spacing: 0.55em, justify: true)

  // Header
  grid(
    columns: (50%, 50%), 
    align: (left, right),
    image("images/logo_heig-vd-2020.svg", width: 30%),
    text(size: 24pt, [
      *Travail de Bachelor #datetime.today().display("[year]")* \
      *Filière #filiere_short* \
      *Orientation #orientation* \
    ])
  )
  
  v(7%)

  // Title
  align(center, par(justify: false, text(size: 54pt)[*#title*]))

  v(4%)

  set par(spacing: 2em)
  block(
    height: 55%, 
    columns(
      2, 
      content
    )
  )
  set par(spacing: 0.55em)

  // Teacher, industry and HES-SO logo
  align(bottom, grid(
    columns: (50%, 50%), 
    align: (left + top, bottom + right),
    text(size: 12pt)[
      Auteur: #author \
      Répondant externe: #industryContact \
      Prof. responsable: #supervisor \
      Sujet proposé par: #industryName \
    ],
    image("images/logo_hes-so.png", width: 25%)
  ))

  v(2%)

  // Footer
  align(bottom + right, text(size: 12pt)[
    *HEIG-VD #sym.copyright #datetime.today().display("[year]") filière #filiere_long*
  ])
}