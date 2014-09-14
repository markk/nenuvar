\include "Salieri/LesHoraces/common.ily"

%% Title page
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \header {
    title = "Les Horaces"
    date = "1786"
  }
  \markup \null
}
%% Table of contents
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplist
  \abs-fontsize-lines #8
  \override-lines #'(use-rehearsal-numbers . #t)
  \override-lines #'(column-number . 2)
  \table-of-contents
}

%% 0-1
\ouverture "Ouverture"
\includeScore "AAAouverture"

%% 1-1
\act "Acte Premier"
\scene "Scène Première" "Scène I"
\pieceToc\markup\wordwrap {
  Camille, une suivante :
  \italic { D’où nait le trouble qui vous presse }
}
\includeScore "AABcamille"
%% 1-2
\pieceToc\markup\wordwrap {
  Camille : \italic { Pour Albe, hélas ! quels vœux me sont permis }
}
\includeScore "AACcamille"
%% 1-3
\pieceToc\markup\wordwrap {
  Camille, une suivante : \italic { Déja le sanctuaire s’ouvre }
}
\includeScore "AADcamille"
%% 1-4
\pieceToc "[Sinfonia]"
\includeScore "AAEsinfonia"
%% 1-5
\pieceToc\markup\wordwrap {
  Camille, chœur : \italic { Déesse secourable }
}
\includeScore "AAFcamilleChoeur"
%% 1-6
\pieceToc\markup\wordwrap {
  L’oracle : \italic { La guerre entre Albe & Rome aujourd'hui doit finir }
}
\includeScore "AAGoracle"
%% 1-7
\pieceToc\markup\wordwrap {
  Camille : \italic { Ce jour à ton amant va pour jamais t’unir }
}
\includeScore "AAHcamille"
%% 1-8
\pieceToc\markup\wordwrap {
  Camille : \italic { Oui, mon bonheur est assuré }
}
\includeScore "AAIcamille"

%% 1-9
\scene "Scène II" "Scène II"
\pieceToc\markup\wordwrap {
  Camille, chœur : \italic { Secourez-nous, ô puissante Egérie }
}
\includeScore "ABAcamilleChoeur"

%% 1-10
\scene "Scène III" "Scène III"
\pieceToc\markup\wordwrap {
  Le vieil Horace, Curiace, Camille, chœur :
  \italic { Peuples, dissipez vos alarmes }
}
\includeScore "ACAhccChoeur"
%% 1-11
\pieceToc\markup\wordwrap {
  Le vieil Horace, chœur : \italic { Déja les deux armées }
}
\includeScore "ACBhoraceChoeur"
%% 1-12
\pieceToc\markup\wordwrap {
  Quatuor & chœur : \italic { O du sort trop heureux retour }
}
\includeScore "ACCquatuorChoeur"

%% 1-13
\intermede "Premier intermède"
\pieceToc\markup\wordwrap {
  Le Grand Prêtre :
  \italic { Le Sénat, rassemblé sous ces voutes sacrées }
}
\includeScore "ADApretre"
%% 1-14
\pieceToc\markup\wordwrap {
  Les Grand Prêtre, chœur :
  \italic { Puissant moteur de l’univers }
}
\includeScore "ADBpretreChoeur"
% 1-15
\pieceTocTitle "Marche"
\includeScore "ADCmarche"
% 1-16
\pieceToc\markup\wordwrap {
  Le Grand Prêtre, chœur : \italic { O Rome ! ô ma patrie ! }
}
\includeScore "ADDpretreChoeur"
% 1-17
\pieceToc\markup { [Sinfonia] }
\includeScore "ADEsinfonia"
% 1-18
\pieceToc\markup\wordwrap {
  Chœur : \italic { O Dieux, défenseurs de nos loix }
}
\includeScore "ADFchoeur"

%%%%%%%%%%%%%%% ACTE II %%%%%%%%%%%%%%%%%%
\newBookPart #'()
\act "Acte Deuxième"
\scene "Scène Première" "Scène I"
% 2-1
\pieceToc\markup\wordwrap {
  Camille, Curiace, le jeune Horace :
  \italic { Ainsi le Ciel pour jamais nous rassemble }
}
\includeScore "BAAcacujh"
% 2-2
\pieceToc\markup\wordwrap {
  Camille, Curiace, le jeune Horace :
  \italic { Douce paix, transports pleins de charmes }
}
% 2-3
\scene "Scène II" "Scène II"
\pieceToc\markup\wordwrap {
  Le jeune Horace, le vieil Horace, Camille, chœur :
  \italic { Vive à jamais le nom d’Horace }
}
\includeScore "BBAchoeur"
\partNoPageTurn #'(violino1 violino2 alto basso fagotto1 fagotto2)
% 2-4
\pieceToc\markup\wordwrap {
  Le jeune Horace, le vieil Horace, chœur :
  \italic { Dieux protecteurs du Tibre }
}
\includeScore "BBBhoracesChoeur"

% 2-5
\scene "Scène III" "Scène III"
\pieceToc\markup\wordwrap {
  Curiace, un Albain, Camille, chœur :
  \italic { Quels sont les trois guerriers que le choix d’Albe honore }
}
\includeScore "BCArecit"
\partNoPageTurn #'(violino1 violino2 alto basso fagotto1 fagotto2)

% 2-6
\scene "Scène IV" "Scène IV"
\pieceToc\markup\wordwrap {
  Curiace, le jeune Horace, le vieil Horace, Camille, chœur :
  \italic { O déplorable choix ! triste & funeste honneur }
}
\includeScore "BDArecit"

% 2-7
\scene "Scène V" "Scène V"
\pieceToc\markup\wordwrap {
  Camille, Curiace : \italic { Iras-tu, Curiace }
}
\includeScore "BEAcamilleCuriace"
% 2-8
\pieceToc\markup\wordwrap {
  Curiace : \italic { Victime de l’amour, victime de l’honneur }
}
\includeScore "BEBcuriace"
