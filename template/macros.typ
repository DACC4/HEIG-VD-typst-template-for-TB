#let alignedpage() = [
  #pagebreak(weak: true, to: "odd")
]

#let blankpage() = [
  #pagebreak()
  #pagebreak()
]

#let fullpage(body) = [
  #alignedpage()
  #body
  #pagebreak(weak: true)
]

#let isevenpage(page) = {
  calc.even(counter(page).get().first())
}

#let isfirsttwopages(page) = {
  let pageNumber = counter(page).get().first()

  pageNumber == 1 or pageNumber == 2
}

#let hr(width: 100%) = {
  line(length: width, stroke: (thickness: 0.5pt))
}
#let hr_dotted(width: 100%) = {
  line(length: width, stroke: (thickness: 0.5pt, dash: ("dotted")))
}

#let currentH(level: 1)={
  let elems = query(selector(heading.where(level: level)).after(here()))

  if elems.len() != 0 and elems.first().location().page() == here().page() {
    return [#elems.first().body] 
  } else {
    elems = query(selector(heading.where(level: level)).before(here()))
    if elems.len() != 0 {
      return [#elems.last().body] 
    }
  }
  return ""
}