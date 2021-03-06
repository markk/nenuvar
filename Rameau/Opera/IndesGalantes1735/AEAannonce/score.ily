\score {
  <<
    \origVersion\new StaffGroupNoBar <<
      \new Staff \with { \haraKiri } <<
        \global \keepWithTag #'conducteur \includeNotes "flute"
      >>
      \new Staff \with { \haraKiri } << \global \includeNotes "violon1" >>
      \new Staff \with { \haraKiri } << \global \includeNotes "violon2" >>
      \new Staff \with { \haraKiri } << \global \includeNotes "violon3" >>
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix"
      >> \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } <<
        \global \includeNotes "basse"
        \includeFigures "chiffres"
        \origLayout {
          s4 s2.*7 s4 \bar "" \break s2. s1 s2 \bar "" \pageBreak
          s4 s2.*8\break s2.*7\break s2.*4\pageBreak
        }
      >>
    >>

    \modVersion\new StaffGroupNoBar <<
      \new StaffGroupNoBracket <<
        \new Staff <<
          \instrumentName "Flutes"
          \global \keepWithTag #'conducteur \includeNotes "flute"
        >>
        \new GrandStaff <<
          \new Staff << \global \includeNotes "violon1" >>
          \new Staff <<
            \instrumentName "Violons"
            \global \includeNotes "violon2"
          >>
          \new Staff << \global \includeNotes "violon3" >>
        >>
      >>
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \includeNotes "voix"
      >> \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } <<
        \global \includeNotes "basse"
        \includeFigures "chiffres"
      >>
    >>
  >>
  \layout { }
  \midi { }
}
