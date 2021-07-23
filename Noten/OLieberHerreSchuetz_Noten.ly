\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))


mBreak = { \break }

globalOLieberHerreSchuetz = {
  \taktstil
  \accidentalStyle modern-voice
  \time 4/2 \key g \dorian | % 1
}

ablaufzeileOLieberHerreSchuetz = {
  \globalOLieberHerreSchuetz

}

sopranINotenOLieberHerreSchuetz = \tempTranspose \relative g' {
  \globalOLieberHerreSchuetz
  \autoBeamOff
  g1. a4 bes4 | % 2
  fis2 ( g1 ) fis2 | % 3
  g1 d4 e8 d8 g2 ~ | % 4
  g8 g8 f8 e8 a4 a4 f4 g8 f8 bes2 ~ \mBreak | % 5
  bes8 bes8 a8 g8 c4 c4 r4 c4 d4 bes4 ( ~ | % 6
  bes4 a8 [ g8 ] a2 ) bes1 | % 7
  r1 bes1 ~ | % 8
  bes2 c4 d4 a2 a2 \mBreak | % 9
  g1 r2 d4 e8 d8 | \barNumberCheck #10
  g2 ~ g8 g8 f8 e8 a4 a4 f4 g8 f8 \mBreak | % 11
  bes2 ~ bes8 bes8 a8 g8 c4 c4 d4 es4 | % 12
  c1 bes1 | % 13
  r4 a4 bes4 g2 ( fis8 [ e8 ] fis2 ) \mBreak | % 14
  \once \omit Staff.TimeSignature \time 1/1
  g1 \bar "||"
  \time 3/2 r2 c2 g2 | % 16
  a2 g2 e2 | % 17
  f2 e2 r2 | % 18
  r2 c'2 a2 | % 19
  bes2 a2 fis2 \mBreak | \barNumberCheck #20
  g2 fis2 a2 | % 21
  bes2 a2 fis2 | % 22
  g2 d2 r2 | % 23
  R1. | % 24
  r2 f'2 c2 | % 25
  d2 c2 a2 \mBreak | % 26
  bes2 a2 c2 | % 27
  d2 c2 a2 | % 28
  d2. d4 d2 | % 29
  c2 b1 \bar "||"
  \time 4/2  c1 r1 | % 31
  R1*2 \mBreak | % 32
  R1*2 | % 33
  \once \omit Staff.TimeSignature \time 1/1
  r1 \bar "||"
  r2 d2 a2 | % 35
  bes2 a2 fis2 | % 36
  g2 fis2 r2 | % 37
  r2 d'2 b2 \mBreak | % 38
  c2 b2 gis2 | % 39
  a2 gis2 b2 | \barNumberCheck #40
  c2. b4 a2 | % 41
  c2 b1 \bar "||"
  \time 2/2 a1 |
  \once \omit Staff.TimeSignature \time 4/2
  r2 f2 f1 \mBreak | % 44
  \numericTimeSignature\time 4/2  r4 f4 g4 a4 bes1 | % 45
  f2 r4 d'4 fis,4. ( e16 [ fis16 ] g2 ~ | % 46
  g2 fis2 ) g1 | % 47
  f4 f4 e8 d8 c4 d8 f8 f8 e8 f2 \mBreak | % 48
  f2 es2 d2 c2 | % 49
  d8 ( [ e16 fis16 ] g4. fis16 [ e16 ] fis4 ) g2 r2 \mBreak |
  \barNumberCheck #50
  R1*2 | % 51
  d'4 d4 c8 bes8 a4 bes8 d8 d8 c8 d2 \mBreak | % 52
  c2 bes2 a2 g2 | % 53
  f8 ( [ g16 a16 ] bes4. a16 [ g16 ] a4 ) bes2 a8 ( [ bes16 c16 ] d4 ~
  \mBreak | % 54
  d8 [ cis16 b16 ] cis4 ) d2 r1 | % 55
  r1 d4 d4 c8 bes8 a4 \mBreak | % 56
  bes8 d8 d8 c8 d2 c2 bes2 | % 57
  a2 g2 c,8 ( [ d16 e16 ] f4. e16 [ d16 ] e4 | % 58
  f8 [ g16 a16 ] bes4. a8 a8 [ g16 f16 ] g8 [ a16 b16 ] c4. b16 [ a16
  ] b4 ) \mBreak | % 59
  c2 r2 g2 f2 | \barNumberCheck #60
  es2 c2 d4 ( e8 [ fis8 ] g2 ~ | % 61
  \once \omit Staff.TimeSignature \time 3/1
  g4 fis8 [ e8 ] fis2 ) g\breve \bar "|."
}

sopranITextOLieberHerreSchuetz = \lyricmode {
  O lie -- ber Her -- re Gott,
  we -- cke uns auf, __ dass wir be -- reit sein,
  we -- cke uns auf, __ dass wir be -- reit sein,
  wenn dein Sohn __ kömmt,
  o __ lie -- ber Her -- re Gott,
  we -- cke uns auf, __
  dass wir be -- reit sein,
  we -- cke uns auf, __
  dass wir be -- reit sein,
  wenn dein Sohn kömmt, wenn dein Sohn __ kömmt,
  ihn mit Freu -- den, 
  mit Freu -- den,
  ihn mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den,
  ihn mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den zu em -- pfa -- hen,
  ihn mit Freu -- den,
  mit Freu -- den,
  ihn mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den zu em -- pfa -- hen 
  und dir mit rei -- nem Her -- zen zu die -- nen,
  durch den -- sel -- bi -- gen,
  dei -- nen lie -- ben Sohn,
  Je -- sum Chri -- stum,
  A -- men,
  durch den sel -- bi -- gen, dei -- nen lie -- ben Sohn,
  Je -- sum Chri -- stum,
  A -- men, A -- men,
  durch den -- sel -- bi -- gen dei -- nen lie -- ben Sohn,
  Je -- sum Chri -- stum,
  A -- men,
  Je -- sum Chri -- stum,
  A -- men.
}

sopranIINotenOLieberHerreSchuetz = \tempTranspose \relative g' {
  \globalOLieberHerreSchuetz
  \autoBeamOff
  R1*8 \mBreak | % 5
  R1*4 | % 7
  g1. a4 bes4 | % 8
  fis2 ( g1 ) fis2 \mBreak | % 9
  g1 d4 e8 d8 g2 ~ | \barNumberCheck #10
  g8 g8 f8 e8 a4 a4 f4 g8 f8 bes2 ~ \mBreak | % 11
  bes8 bes8 a8 g8 c4 c4 r4 a4 bes4 bes4 ( ~ | % 12
  bes4 a8 [ g8 ] a2 ) bes1 | % 13
  r2 d4 es4 c1 \mBreak | % 14
  \once \omit Staff.TimeSignature \time 1/1
  b1 \bar "||"
  \time 3/2 R1. | % 16
  r2 c2 g2 | % 17
  a2 g2 e2 | % 18
  f2 e2 r2 | % 19
  r2 d'2 a2 \mBreak | \barNumberCheck #20
  bes2 a2 fis2 | % 21
  g2 fis2 a2 | % 22
  bes2. bes4 bes2 | % 23
  a2 g1 | % 24
  f1 r2 | % 25
  r2 f'2 c2 \mBreak | % 26
  d2 c2 a2 | % 27
  bes2 a2 c2 | % 28
  f2. f4 f2 | % 29
  es2 d1 \bar "||"
  \time 4/2  c1 r2 g2 | % 31
  g1 r4 g4 g4 a4 \mBreak | % 32
  bes1 a2 r4 bes4 | % 33
  \once \omit Staff.TimeSignature \time 1/1
  e,1 \bar "||"
  \time 3/2  \time 3/2 d1 r2 | % 35
  r2 d'2 a2 | % 36
  bes2 a2 fis2 | % 37
  g2 fis2 r2 \mBreak | % 38
  r2 e'2 b2 | % 39
  c2 b2 gis2 | \barNumberCheck #40
  a2. b4 c2 | % 41
  a2 gis1 \bar "||"
  \time 2/2  a1 |
  \once \omit Staff.TimeSignature \time 4/2
  r2 a2 a1 \mBreak | % 44
  r4 a4 bes4 c4 d1 | % 45
  c2 r2 r2 r4 es4 | % 46
  a,1 g1 | % 47
  R1*2 \mBreak | % 48
  R1*2 | % 49
  d'4 d4 c8 bes8 a4 bes8 d8 d8 c8 d2 \mBreak | \barNumberCheck #50
  c2 bes2 a2 g2 | % 51
  f8 ( [ e16 fis16 ] g4. fis16 [ e16 ] fis4 ) g4 g4 f8 e8 d4 \mBreak | % 52
  e8 g8 g8 fis8 g2 f2 es2 | % 53
  d2 c2 d8 ( [ e16 fis16 ] g4. f8 f8 [ e16 d16 ] \mBreak | % 54
  e2) d2 d'4 d4 c8 bes8 a4 | % 55
  bes8 d8 d8 c8 d2 bes4 bes4 a8 g8 f4 \mBreak | % 56
  g8 bes8 a8 g8 a2 r1 | % 57
  c2 bes2 a2 g2 | % 58
  r2 c,8([ d16 e16 ] f4. es8 es8 [ d16 c16 ] d2 ) \mBreak | % 59
  c4 g'4 f2 es2 d2 | \barNumberCheck #60
  g4 ( a8 [ bes8 ] c2. bes4 bes4 a8 [ g8 ] | % 61
  \once \omit Staff.TimeSignature \time 3/1
  a1 ) g\breve \bar "|."
}

sopranIITextOLieberHerreSchuetz = \lyricmode {
  O lie -- ber Her -- re Gott,
  we -- cke uns auf, __
  dass wir be -- reit sein,
  we -- cke uns auf,
  dass wir be -- reit sein, wenn dein Sohn __ kömmt,
  wenn dein Sohn kömmt,
  ihn mit Freu -- den,
  mit Freu -- den,
  ihn mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den zu em -- pfa -- hen,
  ihn mit Freu -- den,
  mit Freu -- den,
  mit Freu -- den zu em -- pfa -- hen,
  und dir mit rei -- nem Her -- zen zu die -- nen,
  ihn mit Freu -- den,
  mit Freu -- den,
  ihn mit Freu -- den,
  mit Freu -- den zu em -- pfa -- hen
  und dir mit rei -- nem Her -- zen zu die -- nen,
  durch den -- sel -- bi -- gen dei -- nen lie -- ben Sohn,
  Je -- su Chri -- stum,
  A -- men,
  den -- sel -- bi -- gen dei -- nen lie -- ben Sohn,
  Je -- sum Chri -- stum,
  A -- men,
  durch den -- sel -- bi -- gen,
  dei -- nen lie -- ben Sohn,
  durch den -- sel -- bi -- gen,
  die -- nen lie -- ben Sohn,
  Je -- sum Chri -- stum,
  A -- men,
  Je -- sum Chri -- stum, A -- men.
}

orgelRHNotenOLieberHerreSchuetz = \tempTranspose \relative c' {
  \globalOLieberHerreSchuetz

}



continuoNotenOLieberHerreSchuetz = \tempTranspose \relative c {
  \globalOLieberHerreSchuetz
  g\breve | % 2
  d'\breve | % 3
  g,1 bes2 b2 | % 4
  c2 cis2 d2 ~ d2 \mBreak | % 5
  es2 e2 f2 bes,2 | % 6
  f'1 bes,1 | % 7
  g\breve | % 8
  d'1 d1 \mBreak | % 9
  g,1 bes2 b2 | \barNumberCheck #10
  c2 cis2 d2 d2 \mBreak | % 11
  es2 e2 f2 bes,4 es4 | % 12
  f1 bes,1 | % 13
  d2 bes4 c4 a1 \mBreak | % 14
  \once \omit Staff.TimeSignature \time 1/1
  g1 \bar "||"
  \time 3/2 c1 c2 | % 16
  f,2 c'1 | % 17
  f2 c1 | % 18
  f,2 c'2 d2 | % 19
  g,2 d'1 \mBreak | \barNumberCheck #20
  g2 d1 | % 21
  g,2 d'1 | % 22
  g,2. g4 bes2 | % 23
  f2 c'1 | % 24
  f,1 f'2 | % 25
  bes2 f1 \mBreak | % 26
  bes,2 f'1 | % 27
  bes2 f1 | % 28
  bes,2. bes4 bes2 | % 29
  c2 g'1 \bar "||"
  \time 4/2  c,1 r2 c2 | % 31
  c1 r4 c4 c4 a4 \mBreak | % 32
  g1 fis2 g2 | % 33
  \once \omit Staff.TimeSignature \time 1/1
  a1 \bar "||"
  \time 3/2
  d1 d2 | % 35
  g2 d1 | % 36
  g,2 d'1 | % 37
  g2 d2 e2 \mBreak | % 38
  a,2 e'1 | % 39
  a2 e1 | \barNumberCheck #40
  a,2. g4 f2 | % 41
  a2 e'1 \bar "||"
  \time 2/2
  a,1
  \once \omit Staff.TimeSignature \time 4/2
  r2 f'2 f1 \mBreak | % 44
  r4 f4 es4 c4 bes1 | % 45
  a2 g2 d'2 c2 | % 46
  d1 g,1 | % 47
  f'2 c4 a4 bes4 c4 f2 \mBreak | % 48
  d2 c2 bes2 a2 | % 49
  bes2 a2 g4 es'4 d2 \mBreak | \barNumberCheck #50
  f2 g2 f2 c2 | % 51
  bes2 a2 g4 es'4 d4 bes4 \mBreak | % 52
  c4 a4 g4 es'4 f8 [ es8 ] d4 es4 c4 | % 53
  d4 bes4 f'2 bes,4 ~ bes8 [ c8 ] d2 \mBreak | % 54
  a2 d2 bes2 f'2 | % 55
  g4 es4 d2 bes2 f'2 \mBreak | % 56
  es8 [ d8 ] es4 d2 f,2 g2 | % 57
  f2 g2 a4 ~ a8 [ bes8 ] c2 | % 58
  d4 d8 [ e8 ] f2 c2 g'2 \mBreak | % 59
  c,2 d2 es2 bes2 | \barNumberCheck #60
  c1 g1 | % 61
  \once \omit Staff.TimeSignature \time 3/1
  d'1 g,\breve \bar "|."
}

orgelLHNotenOLieberHerreSchuetz = \tempTranspose \relative c {
  \globalOLieberHerreSchuetz
  \continuoNotenOLieberHerreSchuetz
}

bezifferungOLieberHerreSchuetz = \figuremode {
  \globalOLieberHerreSchuetz
  s1*2 |
  <_+>2 <4>1 <_+>2 |
  s1. <6>2 |
  s2 <6> s2 <6> |
  s2 <6> s1 |
  <4>2 <3> s1 |
  s1*2 |
  <6 _+>2  <4> <4> <_+> |
  s1. <6>2 |
  s2 <6> s2 <6> |
  s2 <6> s1 |
  <4>2 <3> s1 |
  s2. <_->4 <7>2 <_+> |
  <_+>1 |
  s1. |
  s1. |
  s1. |
  s1 <_+>2 |
  s2 <_+>1 | 
  s2 <_+>1 | 
  s2 <_+>1 | 
  s1. |
  s1. |
  s1. |
  s1. |
  
  s1. |
  s1. |
  s1. |
  <_->2 <_!>1 |
  s1*2 |
  s1*2 |
  
  s1 <[6]>2 s2 |
  <4>2 <_+> |
  <_+>1. |
  s2 <_+>1 |
  s2 <_+>1 |
  s2 <_+> <_+> |
  
  s2 <_+>1 |
  s2 <_+>1 |
  s2. <_!>4 s2 |
  s2 <[_+]>1 |
  <[_+]>1 |
  s1*2 |
  s2 <6>4 <6> s1 |
  <6>2 s <_+> <_-> |
  <4>2 <_+> <_!>1 |
  s1*2 |
  
  s2 <_-> s2 s |
  <5+>4 <6> <7> <6\\> s4 <7>8 <6> <[_+]>2 |
  
  s1 <[6]>2 s2 |
  <5+>4 <6> <7> <6\\> s4 <7>8 <6> s4 s4 |
  
  s4 <7>8 <6\\> s2 s1 |
  s2 <4>4 <3> s4 <6> s2 |
  
  <4>4 <_+> s2 s s |
  s4 <7>8 <6> <_+>2 s s |
  
  s8 <6> <7> <6> <_+>2 s s |
  s s s4 <6> <4>4 <3> |
  s4 <6> <4> <3> <_->2 <4>4 <_+> |
  
  <_->2 s s s |
  <_->1 <4>2 <3> |
  <4>2 <_+> s1
  
}


metronomZeileOLieberHerreSchuetz = \drummode {
}
\include "defOLieberHerreSchuetz.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "OLieberHerreSchuetz-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreOLieberHerreSchuetz
  }
}

\book {
  \bookOutputName "OLieberHerreSchuetz-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreOLieberHerreSchuetz
  }
}
%Arbeitspartitur***
