\score {
  <<
    \origVersion\new StaffGroupNoBar <<
      \new Staff \with { \haraKiri } \withLyrics <<
        \global \keepWithTag #'orig1 \includeNotes "voix"
      >> \keepWithTag #'orig1 \includeLyrics "paroles"
      \new Staff \with { \haraKiriFirst } \withLyrics <<
        \global \keepWithTag #'orig2 \includeNotes "voix"
      >> \keepWithTag #'orig2 \includeLyrics "paroles"
      \new Staff <<
        \vA <>^"B.C."
        \global \includeNotes "basse"
        \includeFigures "chiffres"
        \vA\origLayout {
          s2.*2 s2 \bar "" \break s4 s2. s1*2\break
          s2. s1 s2 \bar "" \break s2 s1*2\break s2.*3\pageBreak
          s2.*2 s4\bar "" \break s2 s2. s2 \bar "" \break
          s4 s1*2\break s2. s1 s2 \bar "" \break
          s2 s2. s2 \bar "" \pageBreak
          s4 s2.*2 s2 \bar "" \break s2 s1 s2.\break
          s1 s2 \bar "" \break s2 s1 s2 \bar "" \break
          s2 s1 s2.\break s1*2\pageBreak
          s1 s2.*2 s2 \bar "" \break s4 s2.*3 s2 \bar "" \break
          s4 s2.*2\break s1 s2. s4 \bar "" \break
          s2 s2.*4\break s2.*6\pageBreak
          s2.*4 s2 \bar "" \break s4 s2.*4 s1\break
        }
        \vB\origLayout {
          s2.*2\break s2.*2 s1*2\break s2. s1 s2 \bar "" \break
          s2 s1\break s1 s2.*2\break s2.*2 s2 \bar "" \pageBreak
          s4 s2.*2\break s2. s1 s2 \bar "" \break s2 s2. s1\break
          s1 s2. s4 \bar "" \break s2 s2.*2\break s1*2 s2 \bar "" \break
          s4 s1 s2 \bar "" \pageBreak
          s2 s1 s2 \bar "" \break s2 s1 s2.\break s1*2\break
          s1 s2.*2\break s2.*4\break \grace s16 s2.*2 s2 \bar "" \break
          s4 s1 s2 \bar "" \break s4 s2.*4\pageBreak
          s2.*6\break s2.*4\break s2.*5\break s2. s1\break
        }
      >>
    >>

    \modVersion\new StaffGroupNoBar <<
      \new Staff \withLyrics <<
        \characterName "Emilie"
        \global \keepWithTag #'emilie \includeNotes "voix"
      >> \keepWithTag #'emilie \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \characterName "Valere"
        \global \keepWithTag #'valere \includeNotes "voix"
      >> \keepWithTag #'valere \includeLyrics "paroles"
      \new Staff <<
        \vA\instrumentName "B.C."
        \vB\instrumentName "[B.C.]"
        \global \includeNotes "basse"
        \includeFigures "chiffres"
      >>
    >>
  >>
  \layout { ragged-last = #(and (eqv? #t (ly:get-option 'urtext)) 
                                (eqv? 'v175x (ly:get-option 'indes-version))) }
  \midi { }
}
