\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Ćuk sedi"
  %subtitle = "II."
  composer = "Međimurje"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 10
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
  \set chordChanges = ##t
  \semiGermanChords
  % Chords follow here.
  d2:m | d2:m |
  b2 | f2 |
  g2:m | d2:m |
  a2 | d2:m |
}

melody = \relative c'' {
  \global
  % Music follows here.
  a8 a a( g) |
  f8 e d4 |
  d'8 d d b |
  a4 f | \break
  c'8 b a( g) |
  f8 e d4 |
  e8 g f d |
  d4 d |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Ćuk se -- di, __ ćuk se -- di, na ze -- le -- nom bo -- ru,
  ćuk se -- di, __ ćuk se -- di, mi -- lo se zgle -- da -- va.
}
verse_dva = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  On gle -- di, __ on gle -- di, gr -- li -- cu bez pa -- ra,
  on gle -- di, __ on gle -- di, to -- žno pre -- mi -- šlja -- va.
}
verse_tri = \lyricmode {
  % Lyrics follow here.
  \set stanza = "3."
  Ho -- di sej, __ ho -- di sej, gr -- li -- ca bez pa -- ra,
  nej -- dem nej, __ nej -- dem nej, ar me maj -- ka ka -- ra.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verse_dva }
    \addlyrics { \verse_tri }
  >>
  \layout { }
}