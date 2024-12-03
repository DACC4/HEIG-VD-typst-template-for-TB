#import "macros.typ": *

#let TBStyle(TBauthor, confidential, body) = {
  set heading(numbering: none)

  // Move all 1 level headings to new odd page
  show heading.where(
    level: 1
  ): it => [
    #pagebreak(weak: true, to: "odd")
    #v(2.5em)
    #it
    \
  ]

  // TODO find a way to apply this only to the main outline not the figures and the tables one
  show outline.entry.where(
    level: 1
  ): it => {
    if it.element.func() != heading {
      // Keep default style if not a heading.
      return it
    }
    
    v(20pt, weak: true)
    strong(it)
  }

  let confidentialText = [
    #if confidential{
      [*Confidentiel*]
    }
  ]

  // Set global page layout
  set page(
    paper: "a4",
    numbering: "1",
    header: context{
      if not isfirsttwopages(page){
        if isevenpage(page){
          columns(2, [
            #align(left)[#smallcaps([#currentH()])]
            #colbreak()
            #align(right)[#confidentialText]
          ])
        } else {
          columns(2, [
            #align(left)[#confidentialText]
            #colbreak()
            #align(right)[#TBauthor]
          ])
        }
        hr()
      }
    },
    footer: context{
      if not isfirsttwopages(page){
        hr()
        if isevenpage(page){
          align(left)[#counter(page).display()]
        } else {
          align(right)[#counter(page).display()]
        }
      }
    },
    margin: (
      top: 150pt,
      bottom: 150pt,
      x: 1in
    )
  )

  // LaTeX look and feel :)
  set par(leading: 0.55em, spacing: 0.55em, justify: true)
  set text(font: "New Computer Modern")
  show raw: set text(font: "New Computer Modern Mono")
  show heading: set block(above: 1.4em, below: 1em)
  
  show heading.where(level:1): set text(size: 25pt)

  body
}