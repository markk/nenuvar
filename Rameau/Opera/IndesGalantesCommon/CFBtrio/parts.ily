\piecePartSpecs #`(,@(if (eqv? 'v1735 (ly:get-option 'indes-version))
                         `((dessus #:tag-notes conducteur #:instrument "Violons")
                           (haute-contre #:notes "parties")
                           (taille #:notes "parties"))
                         '())
                     (basse #:score-template "score-basse-continue")
                     (silence #:score "score-silence"))