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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 4))
  %annotate-spacing = ##t
  %ragged-last = ##f
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
  \override Staff.Stem.stencil = ##f
  \set Score.barNumberVisibility = ##f
}

melody = \relative c'' {
  \global
  %\once \override HorizontalBracketText.text = "1 1/2"
  %c1^\markup \raise #5 {{ \italic "anhemitonska" } "pentatonika (sa polustupkama)"}
  %\startGroup a\stopGroup g e d \parenthesize c 
  %c d e g a \parenthesize c
  %\break
  
  \once \override HorizontalBracketText.text = \markup \small {{"1"} \tiny"1/2"}
  c1^\markup \raise #5 {{ \italic "anhemitonska" } "pentatonika (sa polustupkama)"}
  \startGroup a\stopGroup
  \once \override HorizontalBracketText.text = \markup \small {{"1"} \tiny"1/2"}
  g\startGroup
  
  e\stopGroup
  d%^\markup { \small "      1" }
  \once \override Staff.Parentheses.font-size = 0
  \parenthesize c
  c4_\markup { \small "1" } s4
  d4_\markup \lower #2.8 { \small "2" } s4
  e4_\markup \lower #2.8 { \small "3" } s4
  g4_\markup \lower #2.8 { \small "4" } s4
  a4_\markup \lower #2.8 { \small "5" } s4 \once \override Staff.Parentheses.font-size = 0 \parenthesize c4 s4
  \break
  
  %h1^\markup \raise #5 {{ \italic "hemitonska" } "pentatonika (sa polustupkama)"}
  %a f e c
  %c
  %\once \override HorizontalBracketText.text = "1/2"
  %e\startGroup f\stopGroup
  %g
  %\once \override HorizontalBracketText.text = "1/2"
  %h\startGroup \parenthesize c\stopGroup
  %\break
  
  h1^\markup \raise #2 {{ \italic "hemitonska" } "pentatonika (sa polustupkama)"}
  a f e \override Staff.Parentheses.font-size = 0 \parenthesize c
  c4 s4
  \once \override HorizontalBracketText.text = "1/2"
  e4\startGroup s4 f4\stopGroup s4
  g4 s4
  \once \override HorizontalBracketText.text = "1/2"
  h4\startGroup s4 \once \override Staff.Parentheses.font-size = 0 \parenthesize c4\stopGroup s4
}

\score {
  <<
    \new Staff { \melody }
  >>
  \layout { }
}
