\score {
  \new StaffGroupNoBar <<
    \origVersion <<
      \new Staff \withLyrics <<
        \global \keepWithTag #'basse \includeNotes "voix"
      >> \keepWithTag #'basse \includeLyrics "paroles"
      \new Staff \with { \haraKiri } <<
        \global \keepWithTag #'dessus1 \includeNotes "dessus"
      >>
      \new Staff \with { \haraKiri } <<
        { s2 s1*2 s2. s1*2 \startHaraKiri s1*4 \stopHaraKiri
          s2.*2 s1 s2. s1*6 s2. \startHaraKiri s1*3 s1.*4
          \stopHaraKiri }
        \global \keepWithTag #'dessus2 \includeNotes "dessus"
      >>
      \new Staff <<
        <>^"B.C."
        \global \includeNotes "basse"
        \includeFigures "chiffres"
        \origLayout {
          s2 s1*2 s2.\pageBreak
          s1 s2. \bar "" \break s4 s1*3 s2 \bar "" \break
          s2 s2. s2 \bar "" \pageBreak
          s4 s1 s2 \bar "" \break s4 s1*2 \break
          s1*4 s2 \bar "" \break s4 s1*2\break s1 s1.*3 s2. \bar "" \pageBreak
          s2. s1.*3\break s1.*5\break s1.*5\pageBreak
          s1.*6\break s1.*5 s2 \bar ""\break
          %%%
          s2 s1 s2 \bar "" \pageBreak
          s4 s1 s2. s1\break s2. s1 s2 \bar "" \break
          s2 s1*3 s4 \bar "" \pageBreak
          s2 s1*2\break \grace s16 s2.*2 s2 \bar "" \break
          s2 s2.\pageBreak
          s2. s1*2 s2 \bar "" \break s4 s2.*2 s2 \bar "" \break
          s4 s2.*4\pageBreak
          s1*2 s2.\break s2. s1 s2 \bar "" \break
          s4 s1*2 s2 \bar "" \pageBreak
          s2 s1*2\break s1 s2. s1\break s1*3 s2 \bar ""\pageBreak
        }
      >>
    >>
    \modVersion <<
      \new GrandStaff <<
        \new Staff << \global \keepWithTag #'dessus1 \includeNotes "dessus" >>
        \new Staff << \global \keepWithTag #'dessus2 \includeNotes "dessus" >>
      >>
      \new ChoirStaff <<
        \new Staff %\with { \haraKiri }
        \withLyrics <<
          \global \keepWithTag #'phani \includeNotes "voix"
        >> \keepWithTag #'phani \includeLyrics "paroles"
        \new Staff %\with { \haraKiri }
        \withLyrics <<
          \global \keepWithTag #'carlos \includeNotes "voix"
        >> \keepWithTag #'carlos \includeLyrics "paroles"
        \new Staff %\with { \haraKiri }
        \withLyrics <<
          \global \keepWithTag #'huascar \includeNotes "voix"
        >> \keepWithTag #'huascar \includeLyrics "paroles"
      >>
      \new Staff <<
        \global \includeNotes "basse"
        \includeFigures "chiffres"
        \vA {
          s2 s1*2 s2. s1*2 s1*3 s1 s2.*2 s1 s2. s1 s1*5 s2. s1*2 s1
          s1.*28 s2 \break
        }
      >>
    >>
  >>
  \layout { }
  \midi { }
}
