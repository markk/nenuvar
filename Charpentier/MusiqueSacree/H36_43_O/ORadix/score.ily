\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \origVersion {
        \override Staff.InstrumentName #'self-alignment-Y = #UP
        \instrumentName \markup \center-column {
          \fontsize #2 "Troisième O"
          après
          \line \italic { Vous qui désirez sans fin }
        }
      }
      \global \keepWithTag #'vhaute-contre \includeNotes "voix"
    >> \keepWithTag #'vhaute-contre \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \global \keepWithTag #'vtaille \includeNotes "voix"
    >> \keepWithTag #'vtaille \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \global \keepWithTag #'vbasse \includeNotes "voix"
    >> \keepWithTag #'vbasse \includeLyrics "paroles"
    \new Staff <<
      \global \includeNotes "basse"
      \new FiguredBass \includeFigures "chiffres"
    >>
  >>
  \layout {
    indent = #(if (eqv? (ly:get-option 'ancient-style) #t)
                  (* 35 mm)
                  smallindent)
  }
  \midi { }
}
