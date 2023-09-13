\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Si mi ljudi vele"
  %subtitle = "II."
  composer = "Selnica."
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
  % Chords follow here.
  \set chordChanges = ##t
  \semiGermanChords
  f2
  c:7
  b4 g:m7
  c2:7
  f4 c:7
  f2
  c2:7
  f2
  
}

melody = \relative c' {
  \global
  % Music follows here.
  f8 a c d |
  c8 c4. |
  d8 c b a |
  g8 g4 r8 | \break
  c8 c b4 |
  c8 a a4 |
  b8 a g4 |
  a8 f f4 |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Si mi lju -- di ve -- le,
  kaj sam do -- bre vo -- lje;
  mo -- ja do -- bra vo -- lja
  pri Bo -- gu po -- či -- va.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
}
