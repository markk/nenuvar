\markup \line {
  \force-line-width-ratio #9/20 \score {
    \new Staff \with { \tinyStaff } <<
      \keepWithTag #'(part) \global \includeNotes #(*note-filename*)
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
        \override RehearsalMark #'font-size = #-1
        \override MetronomeMark #'font-size = #-2
      }
    }
  }
  \force-line-width-ratio #9/20 \fontsize #-2 \column {
    \bold \line { Chœur des Heures }
    \sline { Ses justes Loix, }
    \sline { Ses grands Exploits }
    \sline { Rendent sa memoire éternelle : }
    \sline { Chaque jour, chaque instant }
    \sline { Adjouste encor à son Nom esclattant }
    \sline { Une gloire nouvelle. }
  }
}
