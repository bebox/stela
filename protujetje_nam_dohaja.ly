\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Protuletje nam dohaja"
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
  \key c \major
  \numericTimeSignature
  \time 6/8
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  c4. g c g
  c2. g
  c4. f
  c g c g
  c2.
  
}

melody = \relative c' {
  \global
  % Music follows here.
  e4 f8 e d4 |
  c4 h8 c d4 |
  e4 d8 g8 e4 |
  d8 d4 d r8 | \break
  e4 f8 g a4 |
  g4 c8 g f4 |
  e4 e8 f d4 |
  c8 c4 c r8 |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Pro -- tu -- let -- je nam do -- ha -- ja,
  sva -- ki mu se ve -- se -- li,
  is -- pod gr -- ma fi -- jo -- li -- ca
  svu gla -- vi -- cu vun dr -- ži.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
}
