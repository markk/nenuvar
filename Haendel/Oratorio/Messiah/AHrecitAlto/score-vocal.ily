\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup "Contr'alto"
      \global \clef "treble" \includeNotes "contralto"
    >> \includeLyrics "lyrics"
    \new Staff << \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
}