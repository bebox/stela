\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "O Jelo Jelica"
  %subtitle = "II."
  composer = "Kotoriba"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 10
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 2))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
  %annotate-spacing = ##t
  ragged-last = ##f
}

global = {
  \key d \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  d2 d a d
  d d4 a d2
  
}

melody = \relative c' {
  \global
  % Music follows here.
  d8 fis a4 |
  a8 g fis4 |
  a8 a a g |
  fis8 e d4 |
  fis8 e fis g |
  fis4 e |
  d2 |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  (O Je -- lo, Je -- li ca,)
  za -- si -- pa -- la je -- ze -- ro;
  (za -- si -- pa -- la je -- ze -- ro.)
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
    \line { (O Jelo, Jelica!) }
  }
  \hspace #2
  \column {
    \line { Pod jezerom beli grad. Op. }
    \line { Vu gradu su palače. }
    \line { Vu palači beli stol. }
    \line { Kolo stola klopčice }
    \line { Na njih sede divojke. }
    \line { Dobro švelo šivale. }
    \line { Svilom bi mu šivala. }
    \line { S koprivom bi punila. }
    \line { Daj bi znala videla. }
    \line { Da me stari dopane. }
    \line { S konci bi mu šivala. }
    \line { Zlatom bi mu punila. }
    \line { Daj bi znala, videla. }
    \line { Da me mladi dopane. }
  }
}
