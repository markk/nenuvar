\header {
  copyrightYear = "2014"
  composer = "Antonio Salieri"
  poet = "Nicolas-François Guillard"
}

%% LilyPond options:
%%  urtext  if true, then print urtext score
%%  part    if a symbol, then print the separate part score
#(ly:set-option 'ancient-style (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'ancient-alteration #f)
#(ly:set-option 'original-layout (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'non-incipit #t)
#(ly:set-option 'apply-vertical-tweaks
                (and (not (eqv? #t (ly:get-option 'urtext)))
                     (not (symbol? (ly:get-option 'part)))))
#(ly:set-option 'print-footnotes (not (symbol? (ly:get-option 'part))))

%% use baroque style repeats
#(ly:set-option 'baroque-repeats #f)
#(ly:set-option 'forbid-key-modification #t)
#(ly:set-option 'use-rehearsal-numbers #t)

%% Staff size
#(set-global-staff-size
  (cond ((not (symbol? (ly:get-option 'part))) 16)
        (else 18)))

%% Line/page breaking algorithm
%%  optimal   for lead sheets
%%  page-turn for instruments and vocal parts
\paper {
  #(define page-breaking
     (if (symbol? (ly:get-option 'part))
         ly:page-turn-breaking
         ly:optimal-breaking))
}

\layout {
  reference-incipit-width = #(* 1/2 mm)
}

\include "italiano.ly"
\include "common/common.ily"
\include "common/columns.ily"
\include "common/alterations.ily"
\include "common/toc-columns.ily"
\include "common/livret.ily"
\setOpus "Salieri/LesHoraces"
\opusTitle "Les Horaces"

\layout {
  indent = #(if (symbol? (ly:get-option 'part))
                smallindent
                largeindent)
  short-indent = #(if (symbol? (ly:get-option 'part))
                      0
                      (* 8 mm))
  ragged-last = ##f
}

\layout {
  \context {
    \Voice \override Script.avoid-slur = #'inside
  }
}

\header {
  maintainer = \markup {
    Nicolas Sceaux,
    \with-url #"http://www.lestalenslyriques.com" \line {
      Les Talens Lyriques – Christophe Rousset,
    }
    \with-url #"http://www.cmbv.fr" CMBV
  }
  license = "Creative Commons Attribution-ShareAlike 4.0 License"
}


\opusPartSpecs
#`((tromba1 "Tromba I" ()
            (#:notes "trombe" #:tag-notes tromba1))
   (tromba2 "Tromba II" ()
            (#:notes "trombe" #:tag-notes tromba2))
   (corno1 "Corno I" ()
            (#:notes "corni" #:tag-notes corno1))
   (corno2 "Corno II" ()
            (#:notes "corni" #:tag-notes corno2))
   (flauto1 "Flauto I" ()
            (#:notes "flauti" #:tag-notes flauto1))
   (flauto2 "Flauto II" ()
            (#:notes "flauti" #:tag-notes flauto2))
   (oboe1 "Oboe I" ()
          (#:notes "oboi" #:tag-notes oboe1))
   (oboe2 "Oboe II" ()
          (#:notes "oboi" #:tag-notes oboe2))
   (clarinetto1 "Clarinetto I" ()
                (#:notes "clarinetti" #:tag-notes clarinetto1))
   (clarinetto2 "Clarinetto II" ()
                (#:notes "clarinetti" #:tag-notes clarinetto2))
   (fagotto1 "Fagotto I" ()
             (#:clef "bass" #:notes "bassi" #:tag-notes fagotto1))
   (fagotto2 "Fagotto II" ()
             (#:clef "bass" #:notes "bassi" #:tag-notes fagotto2))

   (violino1 "Violono I" ()
             (#:notes "violini" #:tag-notes violino1))
   (violino2 "Violono II" ()
             (#:notes "violini" #:tag-notes violino2))
   (alto "Alto" () (#:notes "alto" #:clef "alto"))
   (basso "Basso, Contrabasso" ()
          (#:notes "bassi" #:clef "bass" #:tag-notes basso
           #:instrument , #{ \markup\center-column { Basso Contrabasso } #}))

   (timpani "Timpani" ()
            (#:notes "timpani" #:clef "bass")))


corniInstr = \with {
  instrumentName = "Corni"
  shortInstrumentName = "Cor."
}
trombeInstr = \with {
  instrumentName = "Trombe"
  shortInstrumentName = "Tr."
}
flautiInstr = \with {
  instrumentName = "Flauti"
  shortInstrumentName = "Fl."
}
oboiInstr = \with {
  instrumentName = "Oboi"
  shortInstrumentName = "Ob."
}
clarinettiInstr = \with {
  instrumentName = "Clarinetti"
  shortInstrumentName = "Cl."
}
fagottiInstr = \with {
  instrumentName = "Fagotti"
  shortInstrumentName = "Fg."
}

violiniInstr = \with {
  instrumentName = "VViolini"
  shortInstrumentName = "Vn."
}
altoInstr = \with {
  instrumentName = "Alto"
  shortInstrumentName = "Vla."
}
violaInstr = \with {
  instrumentName = "Viola"
  shortInstrumentName = "Vla."
}
bassoInstr = \with {
  instrumentName = "Basso"
  shortInstrumentName = "B."
}
violoncelliInstr = \with {
  instrumentName = "Violoncelli"
  shortInstrumentName = "Vc."
}
cbInstr = \with {
  instrumentName = "Contrabasso"
  shortInstrumentName = "Cb."
}
bcbInstr = \with {
  instrumentName = \markup\center-column {
    Basso Contrabasso
  }
  shortInstrumentName = \markup\center-column { B. Cb. }
}
vccbInstr = \with {
  instrumentName = \markup\center-column {
    Violoncelli Contrabasso
  }
  shortInstrumentName = \markup\center-column { Vc. Cb. }
}
timpaniInstr = \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Timp."
}
choeurInstr = \with {
  instrumentName = \markup\smallCaps Chœur
  shortInstrumentName = \markup\smallCaps Ch.
}
camilleInstr = \with {
  instrumentName = \markup\smallCaps Camille
  shortInstrumentName = \markup\smallCaps Ca.
}
curiaceInstr = \with {
  instrumentName = \markup\smallCaps Curiace
  shortInstrumentName = \markup\smallCaps Cu.
}
vieilHoraceInstr = \with {
  instrumentName = \markup\center-column\smallCaps { Le vieil Horace }
  shortInstrumentName = \markup\smallCaps VH.
}
jeuneHoraceInstr = \with {
  instrumentName = \markup\center-column\smallCaps { Le jeune Horace }
  shortInstrumentName = \markup\smallCaps JH.
}
pretreInstr = \with {
  instrumentName = \markup\center-column\smallCaps { Le Grand Prêtre }
  shortInstrumentName = \markup\smallCaps GP.
}
valereInstr = \with {
  instrumentName = \markup\smallCaps Valere
  shortInstrumentName = \markup\smallCaps Va.
}

footnoteHere =
#(define-music-function (parser this-location offset note)
     (number-pair? markup?)
   (set! location #f)
   (if (ly:get-option 'print-footnotes)
       #{ <>-\tweak footnote-music #(make-footnote-here-music offset note)
          ^\markup\transparent\box "1" #}
       (make-music 'Music 'void #t)))


intermede =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocActMarkup title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* title)
  (add-odd-page-header-text
    parser
    (format #f "~a" (string-upper-case (*act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

annexe =
#(define-music-function (parser location title) (string?)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* title)
  (add-odd-page-header-text
    parser
    (format #f "~a" (string-upper-case (*act-title*)))
    #f)
  (make-music 'Music 'void #t))
