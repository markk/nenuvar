\piecePartSpecs #(let ((breaks #{ s2 s1*7 s2 \break #}))
                   `((dessus #:score "score-dessus")
                     (haute-contre #:music ,breaks)
                     (taille #:music ,breaks)
                     (basse #:music ,breaks)))
