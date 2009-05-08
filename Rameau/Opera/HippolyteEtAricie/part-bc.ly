\header {
  copyrightYear = "2007"
  title = "Hippolyte et Aricie"
  composer = "Jean-Philippe Rameau"
  poet = "Simon-Joseph Pellegrin"
  date = "Version de 1742"
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      Jean-Philippe Rameau, \italic { Hippolyte et Aricie, }
      tragédie en cinq actes, livret de Simon-Joseph Pellegrin.
    }
    \with-url #"http://www.bibliotheques.versailles.fr"
    \tiny \typewriter "http://www.bibliotheques.versailles.fr"
  }
}

#(ly:set-option 'non-incipit #t)
#(ly:set-option 'use-rehearsal-numbers #t)

\include "italiano.ly"
#(set-global-staff-size 18)
\include "common/common.ily"

\setOpus "Rameau/Opera/HippolyteEtAricie"
\opusTitle "Hippolyte et Aricie"
\include "Rameau/Opera/HippolyteEtAricie/common.ily"

\layout {
  \context { \Score \override VerticalAlignment #'max-stretch = ##f }
  \context { \Staff \consists "Page_turn_engraver" }
}

\paper { #(define page-breaking (if (eqv? (*part*) 'voix)
                                    ly:optimal-breaking
                                    ly:page-turn-breaking)) }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  %% Title page
  \markup \null
  \pageBreak

  %% notes
  \markup \null
  \pageBreak

  %% Table of contents
  \markuplines \table-of-contents
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Ouverture
\bookpart {
  \ouverture "Ouverture"
  \includeScore "AAAouverture"
}

%%% Acte Premier
\bookpart {
  \act "Acte Premier"
  \scene "Scène Première"
  \sceneDescription \markup \column {
    \fill-line { \line { Le théâtre représente un temple consacré à Diane. } }
    \fill-line { \line { On y voit un autel. } }
  }
  \pieceToc \markup { Aricie : \italic { Temple sacré, séjour tranquille } }
  \includeScore "AABaricie"
  %%
}
\bookpart {
  \scene "Scène II"
  \sceneDescription \markup \smallCaps { Hippolyte, Aricie. }
  \pieceToc \markup { Hippolyte, Aricie }
  \includeScore "ABAhippolyteAricie"
}
\bookpart {
  \pieceToc \markup { Aricie : \italic { Hippolyte amoureux m'occupera sans cesse } }
  \includeScore "ABBaricie"
  \pieceToc \markup { Hippolyte, Aricie }
  \includeScore "ABChippolyteAricie"
  \pieceToc \markup { Hippolyte et Aricie :  \italic { Nous brûlons des plus pures flammes } }
  \includeScore "ABDduo"
  %%
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Hippolyte, Aricie, } la grande prêtresse de Diane,
    troupe de prêtresses de Diane.
  }
  \pieceTocTitle "Marche"
  \includeScore "ACAmarche"
  \pieceToc \markup { Chœur de prêtresses : \italic { Dans ce paisible séjour Règne l'aimable innocence }}
  \includeScore "ACBchoeur"
}
\bookpart {
  \pieceTocAndTitle \markup "PREMIER AIR" \markup { Premier air : \italic { Dieu d’Amour, pour nos asiles, tes tourments ne sont pas faits. } }
  \includeScore "ACCpretresse"
  \pieceTocTitle "Deuxième Air"
  \includeScore "ACDair"
  \pieceTocAndTitle \markup "GAVOTTE" \markup { Gavotte : \italic { De l’Amour fuyez les charmes } }
  \includeScore "ACEgavotte"
  \partPageTurn #'(basse-continue)
  %%
}
\bookpart {
  \scene "Scène IV"
  \sceneDescription \markup \smallCaps { Phèdre, Aricie, Hippolyte. }
  \pieceToc \markup { Phèdre, Aricie, Hippolyte, chœur de prêtresses }
  \includeScore "ADAphedreAricieChoeurHippolyte"
}
\bookpart {
  \pieceToc \markup { Phèdre : \italic { Périsse la vaine puissance Qui s’élève contre les Rois } }
  \includeScore "ADBphedre"
  \pieceToc \markup { La prêtresse, chœur : \italic { Dieux vengeurs, lancez le tonnerre } }
  \includeScore "ADCprelude"
  \includeScore "ADDpretresseChoeur"
  \pieceTocTitle "Bruit de tonnerre"
  \includeScore "ADEtonnerre"
  %%
}
\bookpart {
  \scene "Scène V"
  \sceneDescription \markup { \smallCaps Diane, et les acteurs
                              de la scène précédente. }
  \pieceToc \markup { Diane, Aricie, Hippolyte }
  \includeScore "AEAdianeAricieHippolyte"
  %%
}
\bookpart {
  \scene "Scène VI"
  \sceneDescription \markup \smallCaps Phèdre.
  \pieceToc \markup { Phèdre : \italic { Que rien n’échappe à ma fureur } }
  \includeScore "AFAphedre"
  \pieceTocTitle "Entr'acte"
  \includeScore "AFBentracte"
  \actEnd \markup { FIN DU PREMIER ACTE }
}

%%% Acte Second
\bookpart {
  \act "Acte Second"
  \sceneDescription \markup \wordwrap-center { Le théâtre représente les Enfers. }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps { Thésée, Tisiphone. }
  \pieceTocTitle "Ritournelle"
  \includeScore "BAAritournelle"
  \pieceToc \markup Thésée
  \includeScore "BABthesee"
  \pieceToc \markup { Tisiphone : \italic { Non, dans le séjour ténébreux C’est en vain qu’on gémit } }
  \includeScore "BACtisiphone"
  \pieceToc \markup { Thésée, Tisiphone }
  \includeScore "BADtheseeTisiphone"
  \pieceToc \markup { Thésée, Tisiphone : \italic { Contente-toi d’une victime. } } 
  \includeScore "BAEtheseeTisiphone"
  %%
  \scene "Scène II"
  \sceneDescription \markup {
    \smallCaps { Pluton, Thésée, } les trois Parques.
  }
  \pieceTocTitle "Entrée de Pluton"
  \includeScore "BBAentree"
  \pieceToc \markup { Thésée, Pluton }
  \includeScore "BBBthesee"
  \includeScore "BBCplutonThesee"
  \pieceToc \markup { Thésée : \italic { Sous les drapeaux de Mars, unis par la valeur } }
  \includeScore "BBDthesee"
  \pieceToc \markup { Thésée, Pluton }
  \includeScore "BBEplutonThesee"
  %%
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Pluton, troupe de divinités infernales,
    les trois Parques.
  }
  \pieceToc \markup { Pluton, chœur : \italic { Que l’Averne, que le Ténare } }
  \includeScore "BCAplutonChoeur"
  \pieceTocTitle "Premier air infernal"
  \includeScore "BCBair"
  \pieceTocAndTitle \markup "DEUXIÈME AIR DE FURIES" \markup {
    Deuxième air de furies : \italic { Pluton commande, vengeons notre Roi. }
  }
  \includeScore "BCCair"
  %%
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Thésée, \smallCaps Tisiphone, les acteurs de le scène 
    précédente.
  }
  \pieceToc \markup { Thésée, Tisiphone }
  \includeScore "BDAtheseeTisiphone"
  \pieceTocAndTitle \markup { TRIO DES TROIS PARQUES } \markup { Trio des trois Parques : \italic { Du Destin le vouloir suprême } }
  \includeScore "BDBparques"
  \includeScore "BDCthesee"
  \pieceToc \markup { Thésée : \italic { Puisque Pluton est inflexible } }
  \includeScore "BDDthesee"
  \pieceToc \markup { Chœur : \italic { Non, Neptune aurait beau t’entendre } }
  \includeScore "BDEchoeur"
  %%
  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Mercure, \smallCaps Pluton et les trois Parques.
  }
  \pieceToc \markup { Mercure, Pluton }
  \includeScore "BEAmercurePluton"
  \pieceToc \markup { Pluton, les Parques : \italic { Vous, qui de l’avenir percez la nuit profonde } }
  \includeScore "BEBplutonParques"
  %%
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Thésée et \smallCaps Mercure.
  }
  \pieceToc \markup { Thésée, Mercure }
  \includeScore "BFAtheseeMercure"
  \pieceTocTitle "Entr'acte"
  \includeScore "BFBentracte"
  \actEnd \markup { FIN DU DEUXIÈME ACTE }
}

%%% Acte troisième
\bookpart {
  \act "Acte Troisième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre représente une partie du Palais de Thésée sur le rivage
    de la mer.
  }
  \scene "Scène Première"
  \sceneDescription \markup \fill-line { \line { \smallCaps Phèdre, seule. } }
  \pieceToc \markup { Phèdre : \italic { Cruelle Mère des Amours } }
  \includeScore "CAAphedre"
  %%
}
\bookpart {
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Phèdre, seule.
  }
  \pieceToc \markup { Phèdre }
  \includeScore "CBAphedre"
  %%
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Phèdre, Hippolyte. }
  }
  \pieceToc \markup { Phèdre, Hippolyte }
  \includeScore "CCAphedreHippolyte"
  %%
}
\bookpart {
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Thésée, Phèdre, Hippolyte. }
  }
  \pieceToc \markup { Thésée, Phèdre, Hippolyte }
  \includeScore "CDAtheseeHippolytePhedre"
  %%
  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Thésée, Hippolyte. }
  }
  \pieceToc \markup { Thésée, Hippolyte }
  \includeScore "CEAtheseeHippolyte"
  %%
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Thésée, Œnone. }
  }
  \pieceToc \markup { Thésée, Œnone }
  \includeScore "CFAtheseeOenone"
  %%
}
\bookpart {
  \scene "Scène VII"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Thésée, une matelote, peuples et matelots.
  }
  \pieceToc \markup { Thésée }
  \includeScore "CGAthesee"
  \pieceToc \markup { Thésée : \italic { Puissant Maître des flots, favorable Neptune } }
  \includeScore "CGBthesee"
  \pieceToc \markup { Thésée : \italic { Mais de courroux l'onde s'agite } }
  \includeScore "CGCthesee"
  \includeScore "CGDthesee"
  \pieceTocTitle "Annonce"
  \includeScore "CGEannonce"
  \pieceToc \markup { Thésée }
  \includeScore "CGFthesee"
  \pieceTocTitle "Marche des matelots"
  \includeScore "CGGmarche"
  \pieceTocAndTitle \markup "CHŒUR" \markup { Chœur de matelots : \italic { Que ce rivage retentisse De la gloire du dieu des flots } }
  \includeScore "CGHchoeur"
  \pieceTocTitle "Premier air des matelots"
  \includeScore "CGIair"
  \pieceTocTitle "Deuxième air des matelots"
  \includeScore "CGJair"
  \pieceTocTitle "Premier rigaudon"
  \includeScore "CGKrigaudon"
  \pieceTocTitle "Deuxième rigaudon"
  \includeScore "CGLrigaudon"
  \pieceToc \markup { Une matelote : \italic { L’Amour, comme Neptune, Invite à s’embarquer } }
  \includeScore "CGMmatelote"
  \pieceNoTitle
  \reIncludeScore "CGKrigaudon" "CGKrigaudonBis"
  \pieceTocTitle "Entr'acte"
  \includeScore "CGNentracte"
  \actEnd \markup { FIN DU TROISIÈME ACTE }
}

%%% Acte Quatrième
\bookpart {
  \act "Acte Quatrième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre représente un bois consacré à Diane sur le rivage de la
    mer.
  }
  \scene "Scène Première"
  \sceneDescription \markup \fill-line { \line { \smallCaps Hippolyte, seul. } }
  \pieceToc \markup { Hippolyte : \italic { Ah ! Faut-il en un jour, perdre tout ce que j’aime ! } }
  \includeScore  "DAAhippolyte"
  %%
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Hippolyte, Aricie. }
  }
  \pieceToc \markup { Hippolyte, Aricie }
  \includeScore "DBAhippolyteAricie"
  \pieceToc \markup { Hippolyte, Aricie : \italic { Nous allons nous jurer une immortelle foi } }
  \includeScore "DBBhippolytearicie"
  \pieceTocTitle "Annonce"
  \includeScore "DBCannonce"
  \pieceToc \markup { Hippolyte }
  \includeScore "DBDhippolyte"
  %%
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Hippolyte, Aricie, } une chasseresse,
    troupe de chasseurs et de chasseresses.
  }
  \pieceTocAndTitle \markup "CHŒUR" \markup {
    Chœur : \italic { Faisons partout voler nos traits }
  }
  \includeScore  "DCAchoeur"
  \pieceTocTitle "Entrée des habitants de la forêt"
  \includeScore "DCBentree"
  \pieceTocTitle "Premier rondeau"
  \includeScore  "DCCrondeau"
  \pieceToc \markup { Une chasseresse : \italic { Amants, quelle est votre faiblesse ? } }
  \includeScore "DCDchasseresse"
  \pieceTocTitle "Premier menuet"
  \includeScore "DCEmenuet"
  \pieceTocTitle "Deuxième menuet"
  \includeScore "DCFmenuet"
  \markup \small-title \fill-line {
    \line { On reprend le premier menuet page \page-refIII #'DCEmenuet . }
  }
  \pieceTocAndTitle \markup "DEUXIÈME RONDEAU" \markup {
    Deuxième rondeau, une chasseresse, chœur : \italic { À la chasse, à la chasse, Armez-vous }
  }
  \includeScore "DCGrondeauChoeur"
  \pieceTocAndTitle \markup "BRUIT DE MER ET VENTS" \markup {
    Chœur, Hippolyte, Aricie : \italic { Quel bruit ! Quels vents ! Quelle montagne humide ! }
  }
  \includeScore "DCHchoeurHippolyteAricie"
  \includeScore "DCIchoeurAricie"
  %%
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Phèdre, troupe de chasseurs et de chasseresses.
  }
  \pieceToc \markup { Phédre, chœur : \italic { Quelle plainte en ces lieux m’appelle } }
  \includeScore "DDAphedreChoeur"
  \pieceTocTitle "Entr'acte"
  \includeScore "DDBentracte"
  \actEnd \markup { FIN DU QUATRIÈME ACTE }
}

%%% Acte Cinquième
\bookpart {
  \act "Acte Cinquième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre représente un jardin délicieux, qui forme les avenues
    de la forêt d'Aricie.  On y voit Aricie couchée sur un lit de
    verdure.
  }
  \scene "Scène Première"
  \sceneDescription \markup \fill-line { \line { \smallCaps Aricie, seule. } }
  \pieceToc \markup { Aricie : \italic { Où suis-je ? de mes sens j’ai recouvré l’usage } }
  \includeScore "EAAaricie"
}
\bookpart {
  \pieceToc \markup { Aricie : \italic { Quels doux Concerts } }
  \includeScore "EABaricie"
  %%
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center {
    Troupe de bergers et de bergères et \smallCaps Aricie.
  }
  \pieceToc \markup { Chœur, Aricie : \italic { Descendez, brillante immortelle } }
  \includeScore "EBAchoeur"
  \includeScore "EBBaricie"
  \includeScore "EBCaricieChoeur"
  %% 
}
\bookpart {
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Diane seule.
  }
  \pieceToc \markup { Diane : \italic { Peuples toujours soumis à mon obéissance } }
  \includeScore "ECAdiane"
  %% 
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Diane seule.
  }
  \pieceToc \markup { Diane }
  \includeScore "EDAdiane"
  %%
  \scene "Scène V"
  \sceneDescription \markup \column {
    \fill-line { \line \smallCaps { Diane, Hippolyte, Aricie. } }
    \fill-line { }
    \fill-line { \line { Les Zéphirs amènent Hippolyte dans un char } }
  }
  \pieceTocTitle "Vol des Zéphirs"
  \includeScore "EEAritournelle"
  \pieceTocAndTitle \markup { DUO } \markup {
    Hippolyte, Aricie : \italic { Aricie / Hippolyte est-ce vous que je vois. }
  }
  \includeScore "EEBaricieHippolyte"
  \pieceToc \markup { Diane }
  \includeScore "EECdiane"
  \pieceTocTitle "Annonce"
  \includeScore "EEDannonce"
  \pieceToc \markup { Diane }
  \includeScore "EEEdiane"
  %%
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Diane, Hippolyte, Aricie, }
    habitants de la forêt d'Aricie et une bergère.
  }
  \pieceTocAndTitle \markup MARCHE \markup { Chœur : \italic { Chantons sur la Musette } }
  \includeScore "EFAmarcheChoeur"
  \pieceTocTitle "Rondeau"
  \includeScore "EFBrondeau"
  \pieceToc \markup { Un bergère : \italic { Plaisirs, doux Vainqueurs } }
  \includeScore "EFCbergere"
  \pieceTocTitle "Premier menuet"
  \includeScore "EFDmenuet"
  \pieceTocTitle "Deuxième menuet"
  \includeScore "EFEmenuet"
  \markup \small-title \fill-line {
    \line { On reprend le premier menuet page \page-refIII #'EFDmenuet . }
  }
  \pieceToc \markup { Diane }
  \includeScore "EFFdiane"
  \pieceTocTitle "Première gavotte"
  \includeScore "EFGgavotte"
  \pieceTocTitle "Deuxième gavotte"
  \includeScore "EFHgavotte"
  \markup \small-title \fill-line {
    \line { On reprend la première gavotte page \page-refIII #'EFGgavotte . }
  }
  \pieceToc \markup { Aricie ou une bergère : \italic { Rossignols amoureux, répondez à nos voix } }
  \includeScore "EFIariette"
  \pieceTocTitle "Chaconne"
  \includeScore "EFJchaconne"
  \actEnd \markup { FIN DE LA TRAGÉDIE }
}