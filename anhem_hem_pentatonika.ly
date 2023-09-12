\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Anhemitonska i hemitonska pentatonika"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 10
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 4))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
  %annotate-spacing = ##t
  ragged-last = ##f
}

\layout {
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
    \override HorizontalBracket.direction = #UP
  }
}

global = {
  \key c \major
  %\set Score.timing = ##f
  \override Score.BarLine.stencil = ##f
  \override Staff.TimeSignature.stencil = ##f
  \set Score.barNumberVisibility = ##f
 
  %\numericTimeSignature
  %\time 64/1
}

melody = \relative c'' {
  \global
  ^"anhemitonska pentatonika (bez polustupke)"
  \once \override HorizontalBracketText.text = "1 1/2"
  c1\startGroup a\stopGroup g e d \parenthesize c 
  c d e g a \parenthesize c
  \break
  
  ^"hemitonska pentatonika (sa polustupkama)"
  h1 a f e c
  c
  \once \override HorizontalBracketText.text = "1/2"
  e\startGroup f\stopGroup
  g
  \once \override HorizontalBracketText.text = "1/2"
  h\startGroup \parenthesize c\stopGroup
}

\score {
  <<
    \new Staff { \melody }
  >>
  \layout { }
}