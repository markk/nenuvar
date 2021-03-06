\clef "dessus"
%%%
%%% Hébé
%%%
<<
  \tag #'dessus { r8 | R2.*29 | r4 r }
  \tag #'musettes {
    r8 |
    R2. |
    r4 r r8 sol'\doux |
    si'8.( la'16) si'8.( do''16) si'8.( do''16) |
    re''2 mi''8. fad''16 |
    sol''2. |
    sol''4 fad''8.\trill( mi''16) re''8.( do''16) |
    si'4\trill \appoggiatura la'8 sol' r r4 |
    <<
      \new Voice {
        s2.*3 s8
        <>^\markup\concat { 2 \super es }
        _\markup\concat { p \super rs }
      }
      { sol''2. |
        fad''8.( sol''16) la''8.( fad''16) re''4~ |
        re''8. re''16 sol''8. fad''16 sol''8. la''16 |
        fad''4.\trill re''8 do''8.( si'16) |
        la'8.( sol'16) do''8.( si'16) la'8.( sol'16) |
        fad'2\trill } \\
      { re''2.~ |
        re''4.( do''8) si'8. la'16 |
        sol'8. re''16 sol''8. fad''16 sol''8. la''16 |
        fad''8.\trill( re''16) do''8.( si'16) la'8.( sol'16) |
        do''8.( si'16) la'8.( sol'16)
        \shiftNote #-0.4 <do'' fad'_\trill>8.(
        \shiftNote #-0.4 <si' mi'>16) |
        \shiftNote #-0.4 <la' re'>2 }
    >> r4 |
    R2. |
    <>_\markup\concat { 2 \super es }
    ^\markup\concat { p \super rs }
    <<
      { re''2. | sol''4 fad'' sol'' |
        sol''4. sol''8 fad''4\trill | sol''2. |
        re''~ | re''~ | re''4 } \\
      { si'2. | re''2 re''4 |
        re''2. | si'\trill |
        si' | do'' | sol'4 }
    >> r4 r |
    R2. |
    r4 <<
      { si''4 si'' | si''~ si''16( la'' sol'' fad'') sol''4~ |
        sol''2.~ | sol''~ | sol''16( fad'' sol'' la'') si''2~ |
        si''2 sol''4 | re''2.~ | re''2 } \\
      { sol''4 sol'' | sol''~ sol''16( fad'' sol'' la'') re''4~ |
        re''2.~ | re''~ | re''~ | re''~ | re''2 do''4 | si'2 }
    >>
  }
  \tag #'flute1 {
    r8 |
    R2.*17 |
    r4^\markup\mod-version\whiteout "Petites flutes" r r8 re'' |
    sol''8.( la''32 sol'') sol''4.(\trill fad''16 sol'') |
    la''8.( si''32 la'') la''4.\trill( sol''16 la'') |
    si''4 r4 r4 |
    R2.*2 |
    r16 sol'' fad'' mi'' re''2~ |
    re''16 mi'' re'' do'' si'2~ |
    si'16 do'' si' la' sol'2~ |
    sol'4~ sol'16( la' si' do'' re'' mi'' fad'' re'') |
    sol''2 sol''4 |
    sol''2\trill sol''8( fad'') |
    \appoggiatura fad''16 sol''2
  }
  \tag #'flute2 {
    r8 |
    R2.*17 |
    <>^\markup\mod-version\whiteout "Petites flutes" R2. |
    r4 r r8 re''' |
    fad''8.( sol''32 fad'') fad''4.\trill( mi''16 fad'') |
    sol''4 r4 r |
    R2.*2 |
    r8 r16 sol'' si''( la'' si'') sol'\noBeam r4 |
    R2. |
    r8 r16 si''16 re'''( do''' re''') re''\noBeam r4 |
    R2. |
    r8 r16 sol'' si''( la'' si'') re'''\noBeam r4 |
    re''4.*5/6 mi''16 re'' mi''32 re'' re''8.\trill do''16 |
    si'2
  }
>>
\newSpacingSection
%%%
%%% Chœur
%%%
\tag #'dessus {
  <>^\markup\whiteout { Violons, musettes et hautb[ois] }
  r8 sol' |
  si'2 si'8 si' |
  re''2 re''8 re'' |
  sol''2. |
  sol''4 fad''8[ mi''] re''[ do''] |
  si'4\trill \appoggiatura la'8 sol'4 r8 <<
    { sol'8 |
      si'8.( la'16) si'8.( do''16) si'8.( do''16) |
      re''2~ re''8( mi''16 fad'') |
      sol''8.( re''16) re''2~ |
      re''2.~ |
      re''~ |
      re''2 re''8. sol''16 |
      fad''4.\trill la'8 si' do'' |
      si'2\trill la'8 sol' |
      la'4 fad'\trill sol'8 la' |
      si'4.\trill do''8 re'' sol'' |
      fad''2\trill la'4 |
      si'8( la') do''( si') la'( sol') |
      do''( si') la'( sol') fad'( mi') |
      re'4 } \\
    { re'8 |
      sol'8.( fad'16) sol'8.( la'16) sol'8.( la'16) |
      si'2~ si'8( do''16 la') |
      si'4 \appoggiatura la'8 sol'8.( fad'16) sol'8.( fad'16) |
      sol'2 fad'8.\trill sol'16 |
      re'4 re''8.( do''16) si'8.\trill( la'16) |
      sol'4.( fad'8) sol'8. mi'16 |
      re'2.~ |
      re'~ |
      re'~ |
      re'4. la'8 si' \appoggiatura la' sol' |
      \appoggiatura sol' la'2 re''4 |
      re'' sol'8( fad') mi'( re') |
      sol'( la') re'( dod') re'4 |
      la4 }
  >> r4 \clef "dessus2" <>^\markup\whiteout Violons re'\doux |
  la2 la'4 |
  mi'2 fad'4 |
  sol' re'8 r si4 |
  do'2 re'4 |
  sol4. \clef "dessus" <>^\markup\whiteout Tous \fort <<
    { re''8 re'' re'' |
      mi''4. re''8 do'' mi'' |
      re''4 \appoggiatura do''8 si'4 } \\
    { si'8 si' re'' |
      sol'4. fa'8 mi' do'' |
      si'4\trill \appoggiatura la'8 sol'4 }
  >> sol'4\doux |
  sol'2.~ |
  sol'2 r4 |
  R2. |
  r4 r la'8.( si'32 do'') |
  si'4.\trill la'8 sol'4 |
  sol'2
}
