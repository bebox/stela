\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Kiša pada, trava raste"
  %subtitle = "II."
  composer = "Narodna iz Međimurja"
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
  \key es \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  c2:m c:m c4:m f:m c2
  c2:m f:m c:m g:7 c:m
  
}

melody = \relative c' {
  \global
  % Music follows here.
  es8 es d c |
  es8 es d c |
  g'8 g as f |
  g2 | \break
  \bar ".|:-|"
  g4 c |
  g f |
  es8 g es c |
  d8 f es d |
  c2 |
  \bar ":|."
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Ki -- ša pa -- da, tra -- va ra -- ste, go -- ra ze -- le -- na,
  Ki -- ša pa -- da, tra -- va ra -- ste, go -- ra ze -- le -- na.
}
verse_dva = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  U toj go -- ri ra -- ste dr -- vo tan -- ko, vi -- so -- ko,
  u toj go -- ri ra -- ste dr -- vo tan -- ko, vi -- so -- ko.
}
verse_tri = \lyricmode {
  % Lyrics follow here.
  \set stanza = "3."
  Pod njim sje -- di dje -- voj -- či -- ca, bra -- tac po -- red nje,
  pod njim sje -- di dje -- voj -- či -- ca, bra -- tac po -- red nje.
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
