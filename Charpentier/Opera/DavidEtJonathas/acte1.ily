\newBookPart #'()
\act "Acte Premier"
\markuplist \paragraph {
  David aiant vaincu les Amalécites est rappelé dans le camp des
  Philistins, d'où il avoit été renvoyé par la jalousie des Chefs de
  l'armée. Une troupe de guerriers, de captifs, & de pasteurs qu'il a
  délivrez, commence par chanter ses loüanges. Achis, auprès de qui il
  s'étoit auparavant retiré, va le recevoir hors du camp, & lui
  apprend que là même il doit y avoir une conférence entre Saül &
  lui, pour délibérer ensemble, si l'on fera la Paix, ou si l'on
  donnera la Bataille.
}
\scene "Scène Première" "SCÈNE 1 : Troupe de guerriers, de pasteurs, et de captifs"
\sceneDescription \markup \wordwrap-center \smallCaps {
  Troupes de guerriers, de pasteurs et de captifs
}
\pieceTocTitle "Marche triomphante"
\includeScore "BAAmarche"
\newBookPart #'(full-rehearsal)
\pieceToc \markup { Un guerrier, chœur : \italic { Du plus grand des héros } }
\includeScore "BABguerriers"
\newBookPart #'(full-rehearsal)
\pieceToc \markup { Bergers : \italic { Le Ciel dans nos bois le fit naître } }
\includeScore "BACbergers"
\pieceToc \markup { Un guerrier, chœur : \italic { Jeune, et terrible dans la guerre } }
\includeScore "BADguerriers"
\newBookPart #'(full-rehearsal)
\pieceToc \markup { Captifs : \italic { Cédons ; rien ne peut se défendre } }
\includeScore "BAEcaptifs"
\pieceToc \markup { Un guerrier : \italic { Le Dieu qui lance le tonnerre } }
\includeScore "BAFguerrier"
\newBookPart #'(full-rehearsal)
\scene "Scène Seconde" "SCÈNE 2 : David, troupes etc."
\sceneDescription \markup \wordwrap-center \smallCaps {
  David, troupes de guerriers, de pasteurs et de captifs
}
\pieceToc \markup { David : \italic { Allez, le Ciel attend un légitime hommage } }
\includeScore "BBAdavid"

\scene "Scène Troisième" "SCÈNE 3 : David"
\sceneDescription \markup \smallCaps David
\pieceToc \markup {
  David : \italic { Ciel ! quel triste combat en ces lieux me rappelle ? }
}
\includeScore "BCAdavid"

\scene "Scène Quatrième" "SCÈNE 4 : Achis, David, troupes etc."
\sceneDescription \markup \center-column {
  \line\smallCaps { Achis, David, troupes de guerriers, }
  \line\smallCaps { de pasteurs et de captifs }
}
\pieceToc \markup { Achis : \italic { Le Ciel enfin favorable à mes vœux } }
\includeScore "BDAritournelle"
\includeScore "BDBachis"
\newBookPart #'(full-rehearsal)
\pieceToc \markup { David, Achis, chœur }
\includeScore "BDCdavidAchis"
\newBookPart #'(full-rehearsal)
\pieceToc \markup { Deux captifs : \italic { Après les fureurs de l'orage } }
\includeScore "BDDcaptifs"
\pieceTocTitle "Menuet"
\includeScore "BDEmenuet"
\actEnd \markup { FIN DU PREMIER ACTE }
#(if (eqv? #t (ly:get-option 'urtext))
     (add-toplevel-markup parser (markup #:vspace 20)))
