\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trompette" } <<
      \global \keepWithTag #'trompette \includeNotes "dessus"
    >>
    \new Staff \with { instrumentName = "Timbales" } <<
      \global \includeNotes "timbales"
    >>
  >>
  \layout { }
}
