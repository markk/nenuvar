\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { }
}
