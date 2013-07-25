\header {
  title = "She Rose and Let Me in"
  subtitle = ""
  source = "Oswald's Book of Curious Scots Tunes (1743)"
  composer = ""
  enteredby = ""
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

  \partial 4 d,8. cis16   b4 fis'8.( g16) fis4 b8.( cis16)   ais4. g8 fis4 e8( d)   cis4. b8 cis( d) e( d)   cis4.( d8) cis4 d8. cis16   b4 fis'8.( g16) fis4 b8.( cis16)   ais4. b8 fis4 b8. cis16   d4 cis8( b) d( cis) b( ais)   b4.( cis8) b4
   \bar "||"
  b8. cis16   d4 cis8( b) ais4 fis   b8( ais b cis) d4 fis,8. g16   e4. d8 cis( b) e( d)   cis4.( d8) cis4 b'8. cis16 d8( cis) d b ais( gis) ais fis   b( ais) b cis d8. e16 d( e fis8)   e,4. d8 e4 fis8 ais   b4.( cis8) b4
   \bar "||"
  d,8. cis16   b4 d8 fis b,4 d'   cis8( b16 ais) b8 g fis4 e8 d   cis4. b8 g'8( fis) e( d)   cis4.( d8) cis4 d8. cis16   b4 d8 fis b4. cis8   d \times 2/3 {cis16( b ais)} b8 g fis4 fis'   e8 d cis b fis4 ais8.( cis16) b4.( cis8) b4
   \bar "||"
  b8. cis16   d8 cis d b cis4 fis,   b8 ais g fis e4 d8. fis16   b,4. fis'8 g fis e d   cis4.( d8) cis4 fis'4   e8 d16( cis) d8 b  ais g16( fis) d8 fis   b16( d) cis( e) d( fis) e( g) fis4 fis,8.( g16)   e4. d8 e4 fis8 ais   b4.( cis8) b4
   \bar "|."

% b'8. cis16   b8( ais) fis ais d, d' cis b

%\times 2/3 {d8( cis b)} cis8 ais fis ais d,8. fis16   g8( fis) e d cis8. cis'16
}

\score {
  \new StaffGroup <<
    \new Staff << \global \fifeOne >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}