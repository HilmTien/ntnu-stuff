#let subject = "Diskret Matematikk / TMA4140"
#let candidate = "Tien Tran"

#set text(size: 12pt, lang: "nb", font: "Calibri")
#set par(
  leading: 14pt,
  justify: true,
)
#show par: set block(above: 16pt)
#set math.equation(numbering: "(1)")

#set page(
  header: [
    #subject / #datetime.today().display("[day].[month].[year]")
    #h(1fr)
    Kandidat:  #candidate
    #line(length: 100%)
  ],
  numbering: (..nums) => "Side " + nums.pos().map(str).join(" av ")
)

= Oppgave #1

$ A = {1, 2, 3, 4} #h(1cm) B = {1, 3, 5, 7} $

== Oppgave 1a

$ A union B = {x | x in A or x in B} = {1,2,3,4,5,7} $

$ A sect B = {x | x in A and x in B} = {1,3} $

$ A backslash B = {x | x in A and x in.not B} = {2,4} $

== Oppgave 1b

$U = NN$

$ A sect macron(B) = A sect (U backslash B) = A backslash B = {2, 4} $

== Oppgave 1h

Beskriv $P(A)$

$ P(A) = {S | S subset.eq A} = {emptyset, {1}, {2}, {3}, {4}, {1, 2}, {1, 3}, {1, 4}, \ {2, 3}, {2, 4}, {3, 4}, {1,2,3},{1,2,4},{1,3,4},{2,3,4},{1,2,3,4}} $

$ abs(P(A)) = 2^(abs(A)) = 2^4 = 16 $

== Oppgave 1e

$C = {{1}, {3,4,5},{2,3},4,emptyset,{{2}},A}$

$ {S in C | S subset.eq A} = {{1}, {2,3}, emptyset, A} $

== Oppgave #2

Gitt $A$ og $B$:

$ overline(A union B) = overline(A) sect overline(B) $

Bevis:

Anta $x in overline(A union B)$

$ x in.not A union B \
x in.not A and x in.not B \
x in overline(A) and x in overline(B) \
x in overline(A) sect overline(B) $