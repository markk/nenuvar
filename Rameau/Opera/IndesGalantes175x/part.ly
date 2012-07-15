#(ly:set-option 'indes-version 'v175x)
\include "Rameau/Opera/IndesGalantesCommon/common.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header {
    title = "Les Indes Galantes"
    date = "Version de 1735"
  }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplist\abs-fontsize-lines #8 \table-of-contents
}

\include "Rameau/Opera/IndesGalantes/prologue.ily"
\include "Rameau/Opera/IndesGalantes/turc.ily"
\include "Rameau/Opera/IndesGalantes/incas.ily"
\include "Rameau/Opera/IndesGalantes/sauvages.ily"
\include "Rameau/Opera/IndesGalantes/fleurs.ily"
