\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Tri ftičice goru preletele"
  %subtitle = "II."
  composer = "Rok Mustač. Sv. Marija."
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 10
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 2))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 4))
  %annotate-spacing = ##t
}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  
}

melody = \relative c' {
  \global
  % Music follows here.
  c4 g' |
  a4 g |
  a8 g g e |
  d4 c | \break
  e4 g |
  d4 c |
  e8 g g e |
  d4 c |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Tri fti -- či -- ce go -- ru pre -- le -- te -- le,
  tri fti -- či -- ce go -- ru pre -- le -- te -- le.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
}