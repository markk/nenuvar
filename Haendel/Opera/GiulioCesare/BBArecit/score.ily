%% Recitativo
\score {
  \new StaffGroupNoBar <<
    \new Staff \withRecit <<
      \global \includeNotes "recit"
    >> \includeLyrics "lyrics"
    \new Staff << \global \clef bass \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \noindent }
}
