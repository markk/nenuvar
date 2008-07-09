%% Recitativo
\score {
  \new StaffGroupNoBar <<
    \new Staff \withRecit <<
      \keepWithTag #'recit  \global
      \includeNotes "recit"
    >> \includeLyrics "lyrics"
    \new Staff <<
      \keepWithTag #'down \global
      { s2 s1*3 \break }
      \clef bass \includeNotes "bassi"
      \includeFigures "figures"
    >>
  >>
  \layout { indent = \noindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
