/*
 Vars
*/
#let language = "fr"

#let studentFirstname = "stuFirstname"
#let studentLastname = "stuLastname"

#let confidential = true

#let TBtitle = "Titre du TB"
#let TBsubtitle = "Sous-titre"
#let TByear = "2024"
#let TBacademicYears = "2023-24"

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

/*
 Includes
*/
#import "template/macros.typ": *

#import "template/style.typ": TBStyle
#show: TBStyle.with(TBauthor, confidential)

/*
 Title and template
*/
#import "template/_title.typ": *
#_title(TBtitle, TBsubtitle, TBacademicYears, TBdpt, TBfiliere, TBorient, TBauthor, TBsupervisor, TBindustryContact, TBindustryName, TBindustryAddress, confidential)
#import "template/_second_title.typ": *
#_second_title(TBtitle, TBacademicYears, TBdpt, TBfiliere, TBorient, TBauthor, TBsupervisor, TBindustryName, TBresumePubliable)
#include "template/_preambule.typ"
#import "template/_authentification.typ": *
#_authentification(TBauthor)

/*
 Cahier des charges
*/
#include "chapters/cdc.typ"

/*
 Table of Content
*/
#outline(title: "Table des matières", depth: 3, indent: 15pt)

/*
 Content
*/
#include "chapters/introduction.typ"

#include "chapters/planification.typ"

#include "chapters/etat-de-lart.typ"

//#include "chapters/ch_exemple.typ"

#include "chapters/architecture.typ"

#include "chapters/implementation.typ"

#include "chapters/conclusion.typ"

/*
 Tables
*/
#include "template/_bibliography.typ"
#include "template/_figures.typ"
#include "template/_tables.typ"

/*
 Annexestable
*/
#include "chapters/outils.typ"

#include "chapters/journal-de-travail.typ"