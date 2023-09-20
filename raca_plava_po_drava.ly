\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Raca plava po Dravi"
  %subtitle = "II."
  composer = "Međimurje"
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
  \key es \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  \semiGermanChords
  c2:m g:m g:m
  c2:m es2
  c4:m b es2
  g c:m
  
}

melody = \relative c'' {
  \global
  % Music follows here.
  c8 c g a |
  b8 g4 a8 |
  b8 g4 g8 |
  c8 c g f |
  g8 es4 f8 |
  \bar ".|:-|"
  g4 f |
  g8 es4 es8 |
  g8 g f d |
  es8 c4 c8 |
  \bar ":|."
  %c4 c |
  %\bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Ra -- ca pla -- va po Dra -- vi, po Dra -- vi,
  kor -- pu ne -- se na gla -- vi.
  Hej, haj, to le -- to da nam ro -- ži -- ce cve -- to.
}
verse_dva = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  Vi -- del sam te na bro -- du, na bro -- du,
  po -- znal sam te po ho -- du.
}
verse_tri = \lyricmode {
  % Lyrics follow here.
  \set stanza = "3."
  Vi -- del sam te "v go" -- ri -- caj, "v go" -- ri -- caj,
  po -- znal sam te po špi -- caj.
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verse_dva }
    \addlyrics { \verse_tri }
  >>
  \layout {}
}
