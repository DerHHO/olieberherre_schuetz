
chorpartiturOLieberHerreSchuetz = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran 1"
        shortInstrumentName = "S 1"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop1" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranINotenOLieberHerreSchuetz
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranINotenOLieberHerreSchuetz
          }
        }
        \addlyrics \sopranITextOLieberHerreSchuetz

      >>


      \new Staff \with {
        instrumentName = "Sopran 2"
        shortInstrumentName = "S 2"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop2" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranIINotenOLieberHerreSchuetz
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranIINotenOLieberHerreSchuetz
          }
        }
        \addlyrics \sopranIITextOLieberHerreSchuetz

      >>
    >>
  >>
}
orgelsystemOLieberHerreSchuetz = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrH" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenOLieberHerreSchuetz
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenOLieberHerreSchuetz
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlH" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenOLieberHerreSchuetz
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenOLieberHerreSchuetz
            }
          }

        >>

      >>
    >>
  >>

}

scoreOLieberHerreSchuetz = {
  <<
    \chorpartiturOLieberHerreSchuetz
    \orgelsystemOLieberHerreSchuetz


    %{\new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenOLieberHerreSchuetz
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenOLieberHerreSchuetz
        }
      }

    >>%}
  >>
}