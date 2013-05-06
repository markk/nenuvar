\header {
  copyrightYear = "2013"
  composer = "Jean-Philippe Rameau"
  poet = "Charles Collé"
  subtitle = "Pastorale Héroïque en un acte"
}

%% LilyPond options:
%%  urtext  if true, then print urtext score
%%  part    if a symbol, then print the separate part score
#(ly:set-option 'ancient-style (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'ancient-alteration #f) %(eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'original-layout (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'non-incipit (symbol? (ly:get-option 'part)))
#(ly:set-option 'apply-vertical-tweaks
                (and (not (eqv? #t (ly:get-option 'urtext)))
                     (not (symbol? (ly:get-option 'part)))))
#(ly:set-option 'print-footnotes #f)

%% use baroque style repeats
#(ly:set-option 'baroque-repeats (eqv? #t (ly:get-option 'urtext)))
#(ly:set-option 'baroque-repeat-bar "|;|")

%% Staff size
#(set-global-staff-size
  (cond ((not (symbol? (ly:get-option 'part)))
         (if (eqv? #t (ly:get-option 'urtext)) 14 16))
        ((memq (ly:get-option 'part) '(basse-continue)) 16)
        (else 18)))

%% Line/page breaking algorithm
%%  optimal   for lead sheets
%%  page-turn for instruments and vocal parts
\paper {
  #(define page-breaking (if (eqv? (ly:get-option 'part) #f)
                             ly:optimal-breaking
                             ly:page-turn-breaking))
}

%% No key signature modification
#(ly:set-option 'forbid-key-modification #t)

%% Use rehearsal numbers
#(ly:set-option 'use-rehearsal-numbers #t)

\layout { reference-incipit-width = #(* 1/2 mm) }

\include "italiano.ly"
\include "common/common.ily"
\include "common/columns.ily"
\include "common/alterations.ily"
\include "common/toc-columns.ily"
\include "common/livret.ily"
\setOpus "Rameau/Opera/DaphnisEtEgle"
\opusTitle "Daphnis et Églé"

\layout {
  indent = #(if (eqv? #t (ly:get-option 'urtext))
                  smallindent
                  largeindent)
  ragged-last = #(eqv? #t (ly:get-option 'urtext))
}

\opusPartSpecs
#`((dessus "Violons, Flûtes, Hautbois" ()
           (#:notes "dessus" #:tag-notes dessus))
   (parties "Hautes-contre et Tailles" ()
            (#:notes "parties" #:tag-notes parties #:clef "alto"))
   (basse "Bassons et Basses" ()
          (#:notes "basse" #:clef "basse" #:tag-notes basse))
   (basse-continue "Basse continue" ((basse #f))
          (#:notes "basse" #:clef "basse" #:tag-notes basse)))

daphnisMark =
#(define-music-function (parser location) ()
  (make-character-mark "vhaute-contre" "Daphnis"))

egleMark =
#(define-music-function (parser location) ()
  (make-character-mark "vdessus" "Eglé"))