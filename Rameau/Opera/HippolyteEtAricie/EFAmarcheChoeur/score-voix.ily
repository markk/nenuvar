\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \global \includeNotes "voix-dessus1"
    >> \includeLyrics "paroles-dessus1"
    \new Staff \withLyrics <<
      \global \includeNotes "voix-dessus2"
    >> \includeLyrics "paroles-dessus2"
    \new Staff \withLyrics <<
      \global \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-haute-contre"
    \new Staff \withLyrics <<
      \global \includeNotes "voix-taille"
    >> \includeLyrics "paroles-taille"
    \new Staff \withLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles-basse"
  >>
  \layout { }
}