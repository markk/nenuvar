\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Bassons
                  \keepWithTag #'autres \global
                  \includeNotes "basson" >>
    \new Staff << \instrumentName \markup Basses
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
}
