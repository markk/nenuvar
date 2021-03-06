\markup \line {
  \force-line-width-ratio #9/20 \score {
    \new Staff \with { \tinyStaff } <<
      \keepWithTag #'() \global \includeNotes #(*note-filename*)
      \clef #(*clef*)
      $(or (*score-extra-music*) (make-music 'Music))
    >>
    \layout {
      indent = #0
      ragged-last = ##t
      line-width = 5\cm
      \context {
        \Score
        \remove "Bar_number_engraver"
        \override RehearsalMark #'font-size = #-2
      }
    }
  }
  \force-line-width-ratio #9/20 \fontsize #-2 \column {
    \bold Jonathas
    \line { Courez ; Saül attend un secours necessaire. }
    \line { Percé du coup fatal qui me ravit le jour, }
    \line { Si je puis par mon sang appaiser ta colere, }
    \line { O Ciel ! en sa faveur écoute mon amour. }
  }
}
