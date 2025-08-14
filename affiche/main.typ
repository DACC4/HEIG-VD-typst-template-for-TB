/*
 Vars
*/
#import "../vars.typ": *

/*
 Includes
*/
#import "template/affiche.typ": affiche
#show: affiche.with(
  title: TBtitle, 
  dpt: "ISC",
  filiere_short: "ISC",
  filiere_long: TBfiliere,
  orientation: "ISCS",
  author: TBauthor,
  supervisor: TBsupervisor,
  industryContact: TBindustryContact,
  industryName: TBindustryName,
)

= Contexte
#lorem(100)

= Objectifs
#lorem(150)

= Résultats
#lorem(50)

#lorem(50)

= Conclusion
#lorem(100)