\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
}
