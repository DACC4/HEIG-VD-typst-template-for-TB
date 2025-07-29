#let language = "fr"

#let studentFirstname = "stuFirstname"
#let studentLastname = "stuLastname"

// Use feminine or masculine form in template's text. Example: "La soussignée" or "Le soussigné"
#let TBfeminineForm = false // for the author
#let TBsupervisorFeminineForm = false // same, but for the supervisor. Example: "Enseignante responsable"

#let confidential = true

#let TBtitle = "Titre du TB"
#let TBsubtitle = "Sous-titre"
#let TByear = "2025"
#let TBacademicYears = "2024-25"

#let TBdpt = "Département des Technologie de l'information et de la communication (TIC)"
#let TBfiliere = "Informatique et systèmes de communication"
#let TBorient = "Sécurité informatique"

#let TBauthor = studentFirstname + " " + studentLastname
#let TBsupervisor = "Prof. Bli Bla"
#let TBindustryContact = "Nom"
#let TBindustryName = "EntrepriseZ"
#let TBindustryAddress = [
  Rue XY\
  1400 Yverdon-les-Bains
]

#let TBresumePubliable = [
  Dans ce travail... Ceci est le résumé publiable...
]