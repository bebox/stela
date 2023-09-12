\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Ftiček veli"
  %subtitle = "II."
  composer = "Narodna iz Međimurja"
  arranger = "(Zapisao V. Žganec)"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 14
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 2))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
  %annotate-spacing = ##t
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \set chordChanges = ##t
  f2 | f | a2 |
  d2:m | g4:m f | b2 |
  d4:m c | d2:m |
}

melody = \relative c' {
  \global
  % Music follows here.
  f8 g a g |
  f8 g a g |
  a8 g f e |
  d4 d | \break
  g4 f |
  d2 |
  f8 f g f16( e) |
  d4 d |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Fti -- ček ve -- li, fti -- ček ve -- li da se že -- nil bo -- de,
  ha, a, aj, da se že -- nil __ bo -- de.
}
verse_dva = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  Ze -- mi me -- ne, ze -- mi me -- ne, pre -- pi -- sa -- nu fti -- cu,
  ha, a, aj, pre -- pi -- sa -- nu __ fti -- cu.
}

verse_tri = \lyricmode {
  % Lyrics follow here.
  \set stanza = "3."
  Ne -- čem te -- be, ne -- čem te -- be, pre -- pi -- sa -- nu fti -- cu,
  ha, a, aj, pre -- pi -- sa -- nu __ fti -- cu.
}

verse_cetiri = \lyricmode {
  % Lyrics follow here.
  \set stanza = "4."
  Ne -- maš hi -- žu, ne -- maš hi -- žu kak ni ja si -- ro -- mah,
  ha, a, aj, kak ni ja si -- ro -- mah.
}

verse_pet = \lyricmode {
  % Lyrics follow here.
  \set stanza = "5."
  I -- mam hi -- žu, i -- mam hi -- žu, od sla -- mi -- ce hi -- žu,
  ha, a, aj, od -- sla -- mi -- ce __ hi -- žu.
}

verse_sest = \lyricmode {
  % Lyrics follow here.
  \set stanza = "6."
  Od sla -- mi -- ce do sla -- mi -- ce, čip, čip, čip, čip,
  ho, ho, ha, a, aj, to je na -- ša __ hi -- ža.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verse_dva }
    \addlyrics { \verse_tri }
    \addlyrics { \verse_cetiri }
    \addlyrics { \verse_pet }
    \addlyrics { \verse_sest }
  >>
  \layout { }
}