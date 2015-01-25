\score {
  \new StaffGroupNoBar \notemode <<
    \new StaffGroupNoBracket <<
      \new Staff \with {
        instrumentName = \markup\center-column { Trombe in C }
        shortInstrumentName = "Tr."
        \consists "Metronome_mark_engraver"
        \consists "Mark_engraver"
      } <<
        \keepWithTag #'() \global
        \keepWithTag #'trombe \includeNotes "trombe"
      >>
      \new GrandStaff \with { \flautiInstr } <<
        \new Staff <<
          \global \keepWithTag #'flauti \includeNotes "flauti"
        >>
      >>
      \new GrandStaff \with { 
        instrumentName = \markup\center-column {
          Oboe col Clarinetti
        }
        shortInstrumentName = \markup\center-column { Ob. Cl. }
      } <<
        \new Staff <<
          \global \keepWithTag #'oboi \includeNotes "oboi"
        >>
      >>
      \new Staff \with { \fagottiInstr } <<
        \global \keepWithTag #'fagotti \includeNotes "bassi"
      >>
    >>
    \new StaffGroupNoBracket <<
      \new GrandStaff \with { \violiniInstr } <<
        \new Staff \with {
          %\consists "Metronome_mark_engraver" 
          %\consists "Mark_engraver"
        } << \global \keepWithTag #'violino1 \includeNotes "violini" >>
        \new Staff <<
          \global \keepWithTag #'violino2 \includeNotes "violini"
        >>
      >>
      \new Staff \with { \altoInstr } << \global \includeNotes "alto" >>
      \new Staff \with { \vccbInstr } <<
        \global \keepWithTag #'basso \includeNotes "bassi"
        \origLayout {
          s2*6\pageBreak
          \grace s4 s2*6\pageBreak s2*6\pageBreak
          s2*6\pageBreak s2*5\pageBreak
          s2*5\pageBreak s2*5\pageBreak
          s2*5\pageBreak s2*6\pageBreak
          s2*5\pageBreak s2*6\pageBreak
          s2*6\pageBreak s2*6\pageBreak
        }
      >>
      \new Staff \with { \timpaniInstr } <<
        \global \includeNotes "timpani"
      >>
    >>
  >>
  \layout {
    \context {
      \Score
      \remove "Metronome_mark_engraver"
      \remove "Mark_engraver"
    }
  }
  \midi {
    \context { \Voice \remove "Dynamic_performer" }
  }
}