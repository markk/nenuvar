\piecePartSpecs
#`((corno1 #:tag-global () #:instrument "Corno I en mi♭"
           #:system-count 2)
   (corno2 #:tag-global () #:instrument "Corno II en mi♭"
           #:system-count 2)
   (oboe1)
   (oboe2)
   (clarinetto1 #:notes "oboi" #:tag-notes oboe1)
   (clarinetto2 #:notes "oboi" #:tag-notes oboe2)
   (fagotto1)
   (fagotto2)
   (violino1)
   (violino2)
   (alto)
   (basso #:instrument , #{ \markup\center-column { Basso Contrabasso } #})
   (silence #:on-the-fly-markup , #{ \markup\tacet#29 #}))
