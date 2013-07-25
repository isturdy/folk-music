\header {
  title = "The Red House"
  subtitle = ""
  source = "Traditional Scottish"
  composer = "harmony by Ian Sturdy"
  enteredby = "Ian Sturdy"
  copyright = "Public Domain"
}

\version "2.16.2-1"

global= {
  \time 4/4
  \key b \minor
}

fifeOne = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 1"
  \set Staff.midiInstrument = "piccolo"

  \partial 4 d,8. cis16
  b4 fis'8. g16 fis4 e8 fis
  g fis e d cis4 d8. cis16
  b4 b'8. cis16 d4 cis8 b
  ais8. b16 cis8 ais fis4 e8 fis
  g fis e d cis4 d8 e
  fis d cis b ais'4 b8 cis
  d b cis ais b fis e fis
  d4 cis8. b16 b4
   \bar ":|:"
  fis'4
  b b8 cis d4 cis8 b
  fis'8. e16 d8 e cis4 b8 ais
  b fis b cis d4 cis8 b
  fis' e d16 fis e d cis4 e,8. fis16
  g8 fis e d cis4 d8 e
  fis d cis b ais'4 b8 cis
  d b cis ais b fis e fis
  d4 cis8. b16 b4
   \bar ":|"
}

fifeTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = "Fife 2"
  \set Staff.midiInstrument = "piccolo"

  \clef "treble_8"
  \partial 4 b,8. a16
  fis4 b8. cis16 d4 b8 d
  e d b4 a b8. a16
  fis4 d'8. e16 fis4 e8 d
  cis8. d16 e8 cis d cis b4
  b8 d b4 a8 g b cis
  b4 fis cis'8 e e fis
  g4 fis e8 d cis b
  b4 a fis
   \bar ":|:"
  b4
  fis'8^"Expressively" b, d e fis4 e8 fis
  b8. b16 g8 g fis4 fis8 e
  fis b, fis'4 g8 fis e4
  b'8 a a4 g8 fis b,4
  b8 d b4 a8 g b cis
  b4 fis cis'8 e e fis
  g4 fis e8 d cis b
  b4 a fis
   \bar ":|"
}

\score {
  \new StaffGroup <<
    \new Staff << \global \fifeOne >>
    \new Staff << \global \fifeTwo >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
    }
  }
}