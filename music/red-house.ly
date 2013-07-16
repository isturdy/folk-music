\header {
  title = "The Red House"
  subtitle = ""
  source = "The Compleat Country Dancing-Master (1740)"
  composer = ""
  enteredby = ""
  copyright = "Public Domain"
}

\version "2.16.2-1"

global= {
  \time 2/2
  \key e \minor
}

fifeOne = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 1"
  \set Staff.midiInstrument = "piccolo"

  e,4 e'2 d8 c   b2 g   fis4 d'2 c8 b   a4 b8 a b a g fis   e4 e'2 d8 c   b2 g4. g8  a g fis e dis e fis4 g e e
   \bar "||"
  g8 a    b a g fis e fis g a   b2 g4. g8   a g fis e d e fis g   a2 fis2   b8 a g fis e fis g a   b2 g4. g8   a8 g fis e dis e fis4 g4 e e
   \bar "||"
  g8 a   b4 b b\tenuto g8 a   b4 b b\tenuto fis8 g   a4 a a\tenuto fis8 g   a4 a a\tenuto g8 a   b4 b b\tenuto g8 a   b4 b b4. b8   a g fis e dis e fis4   g e e
   \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \fifeOne >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 2)
    }
  }
}