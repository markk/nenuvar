\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "thesee-mercure"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { }
}
