\header {
  title = "The Great Silkie"
  subtitle = ""
  source = "Traditional Scottish"
  composer = "harmony by Ian Sturdy"
  enteredby = "Ian Sturdy"
  copyright = "Public Domain"
}

\version "2.16.2-1"

global= {
  \time 3/4
  \key a \minor
}

fifeOne = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 1"
  \set Staff.midiInstrument = "piccolo"

  \partial 4 g4
  g2 b4
  a2 f4
  f2 g8 a
  g2 b4
  b2 b4
  c2 a4
  a2 b8 c
  b2 b4
  c2 e4
  d2 b4
  a2 c4
  b2 b4
  a2 e4
  e2 e4
  f2 g4
  g2. ~ g2
   \bar "|."
}

fifeTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 2"
  \set Staff.midiInstrument = "piccolo"

  \partial 4 d,4
  d2 g4
  c,2 d4
  d2 e4
  d2 g4
  d2 b4
  e2 fis4
  fis a g
  d2 b4
  g'2.
  a2 g4
  fis2 e4
  d2 b4
  c2 b4
  a2 b4
  d2 e4
  d2. ~ d2
   \bar "|."
}

fifeThree = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 3"
  \set Staff.midiInstrument = "piccolo"

   \clef "treble_8"
  \partial 4 g,4
  b2.
  a2.
  f2 g4
  g2 ~ g4
  g a b
  c a2
  d,2.
  g4 fis g
  e2.
  d2.
  a'2.
  g2 ~ g4
  e2.
  e2.
  f2 g4
  g2. ~ g2
   \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \fifeOne >>
    \new Staff << \global \fifeTwo >>
    \new Staff << \global \fifeThree >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
    }
  }
}