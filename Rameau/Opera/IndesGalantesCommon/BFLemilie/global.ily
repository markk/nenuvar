\keys sol \minor
\digitTime\time 2/4 \midiTempo #120
\partial 4 s4
\modVersion { \bar "||" \segnoMark }
\origVersion <>^\markup\musicglyph #"scripts.segno"
s2*7 s4 \fineMark \origVersion\bar "|:|" \modVersion\bar ":|"
s4 s2*7
\origVersion {
  s2 s4 \once\override TextScript #'extra-offset = #'(0 . -4)
  s4^\markup\musicglyph #"scripts.segno"
}
\modVersion {
  s4.. \segnoMark s16
  \endMark "[Dal Segno.]"
}
\bar "|."
