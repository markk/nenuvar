\piecePartSpecs
#`((corno1 #:instrument "Corno I in C" #:tag-global ())
   (corno2 #:instrument "Corno II in C" #:tag-global ())
   (oboe1)
   (oboe2)
   (clarinetto1 #:notes "oboi" #:tag-notes oboe1)
   (clarinetto2 #:notes "oboi" #:tag-notes oboe2)
   (fagotto1)
   (fagotto2)
   (violino1)
   (violino2)
   (alto)
   (basso #:instrument "Basso")
   (timpani)
   (silence #:on-the-fly-markup , #{ \markup\tacet#12 #}))
