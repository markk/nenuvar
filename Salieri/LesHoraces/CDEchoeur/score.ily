\score {
  \new StaffGroupNoBar \notemode <<
    \new StaffGroupNoBracket <<
      \new Staff \with {
        instrumentName = \markup\center-column { Corni in C }
        shortInstrumentName = "Cor."
        \consists "Metronome_mark_engraver"
        \consists "Mark_engraver"
      } <<
        \keepWithTag #'() \global
        { \keepWithTag #'corni \includeNotes "corni" s2 }
      >>
      \new Staff \with { 
        instrumentName = \markup\center-column { Oboi col Clarinetti }
        shortInstrumentName = \markup\center-column { Ob. Cl. }
      } << \global \keepWithTag #'oboi \includeNotes "oboi" >>
      \new Staff \with { \fagottiInstr } <<
        \global \keepWithTag #'fagotti \includeNotes "bassi"
      >>
      \new Staff \with { \timpaniInstr } <<
        \global { \includeNotes "timpani" s2 }
      >>
    >>
    \new StaffGroupNoBracket <<
      \new GrandStaff \with { \violiniInstr } <<
        \new Staff \with {
          \consists "Metronome_mark_engraver" 
          \consists "Mark_engraver"
        } << \global \keepWithTag #'violino1 \includeNotes "violini" >>
        \new Staff <<
          \global \keepWithTag #'violino2 \includeNotes "violini" >>
      >>
      \new Staff \with { \altoInstr } <<
        \global \includeNotes "alto"
      >>
    >>
    \new Staff \with { \vieilHoraceInstr } \withLyrics <<
      \global \includeNotes "vhorace"
    >> \keepWithTag #'vhorace \includeLyrics "paroles"
    \new ChoirStaff \with { \choeurInstr } <<
      \new Staff \withLyrics <<
        \global \includeNotes "vsoprano"
      >> \keepWithTag #'vsoprano \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "valto"
      >> \keepWithTag #'valto \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "vtenor"
      >> \keepWithTag #'vtenor \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "vbasso"
      >> \keepWithTag #'vbasso \includeLyrics "paroles"
    >>
    \new ChoirStaff \with {
      instrumentName = \markup\smallCaps\center-column {
        "Chœur de" Romains
      }
      shortInstrumentName = \markup\smallCaps\center-column { Ch. Ro. }
    } <<
      \new Staff \withLyrics <<
        \global \includeNotes "valto2"
      >> \keepWithTag #'valto2 \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "vtenor2"
      >> \keepWithTag #'vtenor2 \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "vbasso2"
      >> \keepWithTag #'vbasso2 \includeLyrics "paroles"
    >>
    \new StaffGroupNoBracket <<
      \new Staff \with { \bassoInstr } <<
        \global \keepWithTag #'basso \includeNotes "bassi"
        \origLayout {
          s1*2\pageBreak s1*3\pageBreak
          s1*3\pageBreak
        }
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