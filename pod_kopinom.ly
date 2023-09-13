\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Pod kopinom."
  %subtitle = "II."
  composer = "Kotoriba."
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 10
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 2))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
  %annotate-spacing = ##t
  %ragged-last = ##f
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
  f2 c:7 g:m7 c:7 g:m7 c:7
  
}

melody = \relative c' {
  \global
  % Music follows here.
  f8 f g a |
  b8 a c c |
  b a g f | \break
  g4 g8 a |
  b8 a g f |
  g4 g8 g |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Pod ko -- pi -- nom, pod ze -- le -- nom,
  tam je nje -- mu spa -- va -- ti,
  (tam je nje -- mu spa -- va -- ti.)
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
}

\markup {
  \hspace #11
  \column { 
    \line { Pod kopinom, pod zelenom, tam je njemu spavati; }
    \line { Ako njegva kusa mati ne će mi ga davati. }
    \vspace #1
    \line { Obećal mi svilen robec, ne rad bi mi davati. }
    \line { Ako njegva kusa mati ... }
    \vspace #1
    \line { Obećal mi zlaten prsten, ne rad bi mi davati. }
    \line { Ako njegva kusa mati ... }
    \vspace #1
    \line { Obećal mi žote čižme, ne rad bi mi davati. }
    \line { Ako njegva kusa mati ... }
    \vspace #1
    \line { Obećal mi svilen ferton, ne rad bi mi davati. }
    \line { Ako njegva kusa mati ... }
  }
}
