\newBookPart #'()
%% 3-1
\act "Acte Troisiesme"
\scene "Scene Premiere" "Scene I"
\sceneDescription\markup\column {
  \fill-line { \line { Le Theatre change & represente un Desert. } }
  \fill-line { \line { \smallCaps Armide, seule. } }
}
\pieceToc\markup\wordwrap {
  \smallCaps Armide : \italic { Ah ! si la liberté me doit estre ravie }
}
\includeScore "DAAarmide"
%% 3-2
\scene "Scene II" "Scene II"
\sceneDescription\markup\smallCaps { Armide, Phenice, Sidonie }
\pieceToc\markup\wordwrap {
  \smallCaps { Armide, Phénice, Sidonie : }
  \italic { Que ne peut point vostre art ? la force en est extréme }
}
\includeScore "DBAarmidePheniceSidonie"
%% 3-3
\newBookPart #'(full-rehearsal)
\scene "Scene III" "Scene III"
\sceneDescription\markup { \smallCaps Armide seule. }
\pieceToc\markup {
 \smallCaps Armide : \italic { Venez, venez, Haine implacable }
}
\includeScore "DCAarmide"
\sceneDescription\markup\smaller\italic\justify {
  [La Haine sort des Enfers, accompagnée des Furies, de la Cruauté,
  Vengeance, de la Rage, & des Passions qui dépendent de la Haine.]
}
%% 3-4
\newBookPart #'(full-rehearsal)
\scene "Scene IV" "Scene IV"
\sceneDescription\markup\wordwrap-center {
  \smallCaps { Armide, La Haine, } Suite de la Haine.
}
\pieceToc\markup\wordwrap {
  \smallCaps { La Haine, chœur : }
  \italic { Je responds à tes vœux, ta voix s’est fait entendre }
}
\includeScore "DDAhaine"
%% 3-5
\newBookPart #'(full-rehearsal)
\pieceToc\markup [Entrée]
\includeScore "DDBritournelle"
%% 3-6
\newBookPart #'(full-rehearsal)
\pieceToc\markup\wordwrap {
  \smallCaps { La Haine, chœur : }
  \italic { Amour, sors pour jamais, sors d'un cœur qui te chasse }
}
\includeScore "DDChaine"
%% 3-7
\newBookPart #'(full-rehearsal)
\pieceTocTitle "Air"
\includeScore "DDDair"
\score {
  \new Staff {
    \clef "basse" \digitTime\time 2/2
    fa,2_"Fin de l’Entrée."~ fa,8 sol, fa, mi, |
    \custosNote re,4 
  }
  \layout {
    ragged-right = ##t
    indent = 0
  }
}
%% 3-8
\newBookPart #'(full-rehearsal)
\pieceToc\markup\wordwrap {
  \smallCaps { La Haine, Armide : }
  \italic { Sors, sors du sein d’Armide, Amour, brise ta chaîne }
}
\includeScore "DDEarmideHaine"
%% 3-9
\newBookPart #'(full-rehearsal)
\pieceTocTitle "Entr'acte"
\reIncludeScore "DDDair" "DDFair"
\actEnd \markup { FIN DU TROISIÈME ACTE }
