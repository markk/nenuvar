\include "Lully/Opera/LWV53Atys/common.ily"

%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header { title = "Atys" }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplines \abs-fontsize-lines #8 \table-of-contents
}

\include "Lully/Opera/LWV53Atys/0prologue.ily"
\include "Lully/Opera/LWV53Atys/1acte1.ily"
\include "Lully/Opera/LWV53Atys/2acte2.ily"
\include "Lully/Opera/LWV53Atys/3acte3.ily"
\include "Lully/Opera/LWV53Atys/4acte4.ily"
\include "Lully/Opera/LWV53Atys/5acte5.ily"
