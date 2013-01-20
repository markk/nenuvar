\include "Couperin/Nations/common.ily"

%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header {
    title = "Les Nations"
    date = "1726"
  }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplist
  \abs-fontsize-lines #7
  \override-lines #'(use-rehearsal-numbers . #f)
  \override-lines #'(column-number . 2)
  \table-of-contents
}

\bookpart {
  \paper { page-count = #2 }
  \ordre "Troisiéme Ordre"
  \pieceToc "L’Imperiale"
  \includeScore "TroisiemeOrdre/ImperialeA"
}
\bookpart {
  \paper { page-count = #2 }
  \includeScore "TroisiemeOrdre/ImperialeB"
}
\bookpart {
  \paper { page-count = #2 }
  \includeScore "TroisiemeOrdre/ImperialeC"
}
\bookpart {
  \paper { page-count = #4 }
  \includeScore "TroisiemeOrdre/ImperialeD"
}
\markup\null
