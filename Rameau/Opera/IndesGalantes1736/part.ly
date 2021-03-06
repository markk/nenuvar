\include "Rameau/Opera/IndesGalantes1736/common.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header {
    title = "Les Indes Galantes"
    date = "Version de 1736"
  }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplist
  \abs-fontsize-lines #7
  \override-lines #'(use-rehearsal-numbers . #t)
  \override-lines #'(column-number . 2)
  \table-of-contents
}

\include "Rameau/Opera/IndesGalantes1736/prologue.ily"
\include "Rameau/Opera/IndesGalantes1736/turc.ily"
\include "Rameau/Opera/IndesGalantes1736/incas.ily"
\include "Rameau/Opera/IndesGalantes1736/sauvages.ily"
\include "Rameau/Opera/IndesGalantes1736/fleurs.ily"
\include "Rameau/Opera/IndesGalantes1736/annexe.ily"
