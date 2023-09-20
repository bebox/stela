\version "2.24.1"
\include "deutsch.ly"

\header {
  %title = "Vokalne vježbe"
  %subtitle = "II."
  %composer = "Međimurje"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  top-margin = 15
  markup-system-spacing = #'((basic-distance . 0.1) (padding . 2))
  system-system-spacing = #'((basic-distance . 0.1) (padding . 5))
  %annotate-spacing = ##t
  line-width = #85
  left-margin = #20
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \set Score.barNumberVisibility = ##f
  \override Staff.TimeSignature.stencil = ##t
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  \semiGermanChords
  % Chords follow here.
  \once \override Staff.TimeSignature.break-visibility = ##(#t #t #t)
}

melody = \relative c' {
  \global
  % Music follows here.
  c8\staccato e\staccato c\staccato e\staccato c4\staccato r4 \bar ":|."
  \once \override Staff.TimeSignature.break-visibility = ##(#f #t #t) \break
  \time 4/4
  c8 e g e c4 r4 \bar ":|."
  \once \override Staff.TimeSignature.break-visibility = ##(#f #t #t) \break
  \time 4/4
  g'8 f e d c2 \bar ":|."
  \once \override Staff.TimeSignature.break-visibility = ##(#f #t #t) \break
  \time 4/4
  c8 d e4 e8 d c4 \bar ":|."
}

verse = \lyricmode {
  % Lyrics follow here.
  HA -- HA HA -- HA HA
}

verse_dva = \lyricmode {
  % Lyrics follow here.
  HA -- HA HA -- HA HA
}

verse_tri = \lyricmode {
  % Lyrics follow here.
  LA -- LA LA -- LA LA
}

verse_cetiri = \lyricmode {
  % Lyrics follow here.
  NA -- NA NA NA -- NA NA
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse \verse_dva \verse_tri \verse_cetiri }
  >>
   \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 2)
	   (padding . 0.8))
    }
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 2)
	   (padding . 1))
    }
  }
}