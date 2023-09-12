\version "2.24.1"
\include "deutsch.ly"

\header {
  title = "Lepo mi poje"
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
  \key f \major
  \numericTimeSignature
  \time 2/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \set chordChanges = ##t
  f2 | f | c | c | c |
  f2 | f | c | c | c4 c:7 | f2 |
}

melody = \relative c' {
  \global
  % Music follows here.
  f4 f8 f |
  f4 a |
  g8( f e) d |
  c8 c c c |
  c4 r4 | \break
  a'4 a8 a |
  a4 c |
  b8 a g c |
  b8 a g c |
  c4 b |
  a4 r4 |
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Le -- po mi po -- je čr -- ni kos, ha, ha, ha, ha!
  Le -- po mi po -- je čr -- ni kos, oj, čr -- ni kos, oj, čr -- ni kos!
}
verse_dva = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  Ta -- mo "v ze" -- le -- nem bu -- ko -- vju, ha, ha, ha, ha!
  Ta -- mo "v ze" -- le -- nem bu -- ko -- vju, oj, bu -- ko -- vju, oj, bu -- ko -- vju!
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verse_dva }
  >>
  \layout { }
}