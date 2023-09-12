\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Pim tam teče bistra voda."
  %subtitle = "II."
  composer = "Regica Smodek, Goričani."
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
  \key g \major
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
  e8 e h' h |
  c8 h a a |
  e8 e a g |
  fis4 fis | \break
  e8 e a a |
  h8 a g fis |
  e8 e a g |
  e4 e |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Sim tam te -- če bi -- stra vo -- da
  njoj je i -- me Sa -- va;
  po njoj pla -- va no -- va šaj -- ka
  zla -- tom o -- ko va -- na.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
}