\score {
  <<
    \origVersion\new StaffGroupNoBar <<
      \new Staff \with { \haraKiri } <<
        \global \keepWithTag #'flute1 \includeNotes "flute"
      >>
      \new Staff \with { \haraKiriFirst } <<
        \global \keepWithTag #'flute2 \includeNotes "flute"
        { \startHaraKiri s4 s2.*7 s1*2 s2.*7
          \stopHaraKiri s2.*5 \startHaraKiri }
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
          s4 s2.*5\break
          s2.*2 s4 \bar "" \break
          s2. s1 s2 \bar "" \pageBreak
          s4 s2.*5 s4 \bar "" \break
          s2 s2.*5 s2 \bar "" \break
          s4 s2.*7\break
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
  \layout {
    indent = #(if (eqv? #t (ly:get-option 'urtext))
                  smallindent
                  largeindent)
    ragged-last = #(eqv? #t (ly:get-option 'urtext))
  }
  \midi { }
}
