\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Zibu, haju"
  %subtitle = "II."
  composer = "Regica Smodek. 86. god. stara. Goričani."
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
  \key a \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  \semiGermanChords
  e2:m a:m h:7 e:m
  a1:m
  g1:m
  fis2:m7.5-
  h2:7

}

melody = \relative c'' {
  \global
  % Music follows here.
  cis4 cis8( a) |
  h4 h8( gis) |
  a4 a8( fis) |
  fis4 fis |
  a4 a8( fis) |
  fis4 fis | \break
  a8 a a a |
  fis4 fis |
  a8 a a a |
  fis4 fis |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Zi -- bu, ha -- ju,
  de -- te ma -- lo,
  "s ko" -- ca pa -- lo,
  gra -- ha se na -- je -- lo,
  se se ra -- zle -- te -- lo.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \transpose a g { \melody }}
    \addlyrics { \verse }
  >>
  \layout { }
}
