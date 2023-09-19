\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Vu polju nam trava detelina"
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
  \key e \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \semiGermanChords
  \set chordChanges = ##t
  e2 e
  h h4 e2
  
}

melody = \relative c' {
  \global
  % Music follows here.
  e8 e gis gis |
  gis8 e4. |
  fis8 e fis gis |
  \time 3/4
  a8 fis gis e r4 |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  Vu po -- lju nam tra -- va de -- te -- li -- na;
  (vu po -- lju nam).
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
    \line { Njo mi ženje gizdava divojka. - (Njo mi ženje). }
    \line { Svetlem srpom z belami rukami. - (Svetlem srpom). }
    \line { Kaj nažela, to pred konje dela. - }
    \line { Pijte ječte moga braca konji. }
    \line { Jel pojdete dalko po divojku. }
    \line { Po divojku po moju nevestu. }
    \line { Jel pojdete čez gore visoke. }
    \line { Jel pojdete čez vode globoke. }
    \line { Jel pojdete čez moste kovane. }
    \line { Bote vidli divojkine dvore. }
    \line { De divojka s perom dvora zmeće. }
    \line { De rezmela, tam ružice dela; }
    \line { Sehni vehni, ma ruža rumena! }
    \line { Kak si sehla v Jankovu serdešcu. }
    \line { Tak buš sehla v divojkinem dvoru. }
  }
}
