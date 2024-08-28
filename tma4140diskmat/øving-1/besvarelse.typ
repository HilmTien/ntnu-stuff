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

Lar $U = NN$ og definerer mengdene

$ A = {x+1 bar.v x in NN} $
$ B = {2x+1 bar.v x in NN} $
$ C = {3x bar.v x in NN} $
$ D = {4x bar.v x in NN, x <= 3} $

== Oppgave 1a

Finn $B sect C$

Snittet av $B$ og $C$ krever at elementene passer både for $2a+1 and 3b$, hvor $a,b in NN$. Vi observerer at $B$ inneholder alle oddetall og $C$ inneholder alle tall i 3-gangen. Funksjonen $f(n) = 6n + 3$, hvor $n in NN$, gir alle tall som både er i 3-gangen og er oddetall. $6n$ leddet gjør at man "hopper over" partallsverdiene i 3-gangen. 

$ B sect C = {6x + 3 bar.v x in NN} $

== Oppgave 1b

Finn $A backslash B$

$A$ er en mengde med positive heltall utenom $0$. $B$, som nevnt tidligere, består av alle oddetall. Differansen mellom disse mengdene er derfor alle partallene. En formel for partall med $0$ ekskludert kan være $2n+2$, hvor $n in NN$

$ A backslash B = {2x+2 bar.v x in NN} $

== Oppgave 1c

Finn $B backslash C$

Vi ønsker å finne alle oddetall ($B$) utenom tallene i 3-gangen ($C$). En måte å løse det på er å bruke modulusoperatoren. Et heltall $n$ er delelig på 3 dersom $n mod 3 = 0$. Vi kan bruke dette til å ekskludere tallene i 3-gangen

$ B backslash C = {2x + 1 | x in NN, (2x+1) mod 3 != 0} $

== Oppgave 1d

Vis følgende påstand $B subset.eq A union D$

$A$ mangler kun $0$ for å være lik $NN$. Denne verdien finnes i $D$. Vi vet derfor at 

$ A union D = NN $

Siden $NN$ er universet og $B$ er definert utifra det må $B subset.eq A union D$ stemme

== Oppgave 1e

Vis følgende påstand $overline(D) subset.eq A$

Siden $A = NN backslash {0}$ trenger vi bare sjekke om $0 in overline(D)$ siden dette er det eneste punktet som kan gjøre at $overline(D) subset.eq.not A$. Siden $0 in D$ er $0 in.not overline(D)$ og dermed må $overline(D) subset.eq A$ stemme

== Oppgave 1f

Forklar hvorfor følgende ikke er sant $B union C = A$

Unionen av $B$ og $C$ består av oddetall og tall i 3-gangen. Forutenom partallene i 3-ganen, for eksempel 6, 12, 18, mangler resten av partallene. I tillegg er ikke $0$ i $A$ men $0$ er i $C$. Dette gjør at $B union C != A$

= Oppgave #2

La $A$ og $B$ være vilkårlige mengder i et vilkårlig univers. Bevis eller motbevis følgende
påstander.

== Oppgave 2a

$ P(A sect B) subset.eq P(B) $

La $X in P(A sect B)$ og $x in X$. Da følger:

$ X in P(A sect B) => X subset.eq A sect B => x in A and x in B $

Siden alle $x in B => X subset.eq B$. Og siden $P(B)$ inneholder alle delmengder av $B$ betyr det at $X in P(B)$

Påstanden stemmer.

== Oppgave 2b

$ emptyset = P(emptyset) \
{} = {S bar.v S subset.eq emptyset} \
{} = {emptyset} $

Vi ser at påstanden ikke stemmer.

== Oppgave 2c

$ A sect B &in P(A union B) \
P(A union B) &= {S bar.v S subset.eq A union B} \
A sect B subset.eq A union B &=> A sect B in P(A union B) $

Vi sjekker om $A sect B$ er en gyldig verdi for $S$, og siden den er det, er påstanden sann

Påstanden stemmer

== Oppgave 2d

$ P(A) union P(B) = P(A union B) \
{S_1 | S_1 subset.eq A} union {S_2 | S_2 subset.eq B} = {S_3 | S_3 subset.eq A union B} $

Siden $S_1$ eller $S_2$ ikke nødvendigvis er nøyaktig lik $S_3$, for eksempel $A = {1}$, $B = {2}$ mangler unionen mellom $S_1$ og $S_2$ potensmengdeverdien ${1, 2}$. Altså stemmer ikke påstanden

== Oppgave 2e

$ P(A backslash B) subset.eq P(overline(A)) sect P(B) $

La $X in P(A backslash B)$ og $x in X$. Da følger:

$ X in P(A backslash B) => x in A and x in.not B $

La nå $Y in P(overline(A)) sect P(B)$ og $y in Y$. Da følger:

$ Y in P(overline(A)) sect P(B) => y in overline(A) and y in B => y in.not A and y in B$

Vi observerer at $x$ og $y$ har stikk motsatte egenskaper. Siden $X != Y$ utenom det trivielle tilfellet $X = Y = emptyset$, vil potensmengdene ikke ha noe overlapp i det hele tatt (utenom $emptyset$). Påstanden blir derfor usann.