\score {
  \new ChoirStaff <<
    \new Staff \withLyrics << 
      \global \includeNotes "voix"
    >>  \includeLyrics "paroles"
    \new Staff <<
      \global \includeNotes "basse"
      \origLayout {
        s1*6\break s1*5\break s1*4 s2.*2\break
        s2.*8\break s2.*8\break s2.*8\break
      }
    >>
  >>
  \layout { }
  \midi { }
}
