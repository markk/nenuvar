\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "voix-taille"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
