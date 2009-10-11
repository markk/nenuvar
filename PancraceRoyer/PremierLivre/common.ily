\header {
  copyrightYear = "2009"
  composer = "Pancrace Royer"
  date = "1746"
}

#(set-global-staff-size 16)
#(ly:set-option 'non-incipit #t)
#(ly:set-option 'use-rehearsal-numbers #f)

\include "italiano.ly"
\include "common/common.ily"
\setOpus "PancraceRoyer/PremierLivre"
\opusTitle "Premier Livre"

piece=
#(define-music-function (parser location title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (add-odd-page-header-text parser  (string-upper-case title) #f)
  (add-toplevel-markup parser (markup #:title (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

#(define-public (calc-comma-stencils grob)
  (list
   empty-stencil 
   (ly:stencil-aligned-to (ly:stencil-aligned-to
                           (grob-interpret-markup grob (markup #:fontsize 10 ","))
                           Y CENTER)
                          X LEFT)))

\layout {
  \context {
    \Voice
    \override ParenthesesItem #'stencils = #calc-comma-stencils
  }
}

comma = 
#(define-music-function (parser loc arg) (ly:music?)
   (_i "Tag @var{arg} to be parenthesized.")

   (if (memq 'event-chord (ly:music-property arg 'types))
     ; arg is an EventChord -> set the parenthesize property on all child notes and rests
     (map
       (lambda (ev)
	 (if (or (memq 'note-event (ly:music-property ev 'types))
		 (memq 'rest-event (ly:music-property ev 'types)))
	   (set! (ly:music-property ev 'parenthesize) #t)))
       (ly:music-property arg 'elements))
     ; No chord, simply set property for this expression:
     (set! (ly:music-property arg 'parenthesize) #t))
   arg)


#(define-markup-command (suspension layout props) ()
   (interpret-markup layout props
     (make-with-dimensions-markup '(-0.4 . 1.6) '(0 . 1.3)
       (make-postscript-markup "
  0.2 setlinewidth
  1.6 -0.2 moveto
  0.6 -0.2 1 0 180 arc
  stroke
  0.6 1.1 0.3 0 361 arc
  stroke"))))

suspension=^\markup \suspension
