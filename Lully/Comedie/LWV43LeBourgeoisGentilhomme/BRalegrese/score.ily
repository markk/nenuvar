\score {
  \new ChoirStaff <<
    \new GrandStaff <<
      \new Staff << \global \includeNotes "dessus1" >>
      \new Staff << \global \includeNotes "dessus2" >>
    >>
    \new Staff \withLyrics << 
      \global \includeNotes "voix"
    >>  \includeLyrics "paroles"
    \new Staff <<
      \global \includeNotes "basse"
      \origLayout { s1.*6\break s1.*6\break s1.*6\break }
    >>
  >>
  \layout { }
  \midi { }
}
