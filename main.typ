/*
 Vars
*/
#import "vars.typ": *

#set text(lang: language)

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

// Set numbering for content
#set heading(numbering: "1.1")

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

// Remove numbering after content
#set heading(numbering: none)

/*
 Tables
*/
#include "template/_bibliography.typ"
#include "template/_figures.typ"
#include "template/_tables.typ"

/*
 Annexes
*/
#include "chapters/outils.typ"

#include "chapters/journal-de-travail.typ"