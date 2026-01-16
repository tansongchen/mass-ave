\version "2.24.4"
\pointAndClickOff
\include "../numbered.ly"

keytime = { \key d \major }

\header {
  title =  "音乐宝盒"
  subtitle = "古筝 2 分谱"
  meter = \markup {
    \fontsize #2 { \bold "1" " =  D" }
  }
  encodingdate =  "2026-01-16"
  composer =  "编曲：罗畯文"
  arranger = "制谱：谭淞宸"
  tagline = "© Mass Ave 国乐团 2026"
}

\paper {
  ragged-last = ##t
  page-count = #2
  #(define fonts
     (set-global-fonts
      #:roman "Lilypond Serif, Noto Serif CJK SC, Songti SC, STSong"
      #:sans "Lilypond Sans Serif, Noto Sans CJK SC, PingFang SC, STXihei"
      #:typewriter "Lilypond Monospace, LXGW WenKai, Kaiti SC, STKaiti, SimKai"
      ))
}

\layout {}

guzhenger =  \relative g {
  \override Glissando.style = #'zigzag
  | % 1
  \tempo 4=126 R1*5 | % 6
  g8 [ _\p g8 ] r8 g8 g8 r8
  d8 r8 | % 7
  g8 [ g8 ] r8 g8 g8 r8
  d8 r8 | % 8
  g8 [ g8 ] r8 g8 g8 r8
  g8 r8 | % 9
  fis2 :32 fis4 \glissando fis''4
  \glissando | \barNumberCheck #10
  fis,,1 :32 | % 11
  g1 :32 | % 12
  fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 fis16 -! [ fis16 -!
  fis8 -! ] fis4 \glissando | % 13
  fis''2. :32 fis4 \glissando | % 14
  fis,,1 :32 | % 15
  g1 :32 | % 16
  a1 :32 | % 17
  a2. :32 r4 | % 18
  fis16 -! [ _\< fis16 -! fis8 -! ]
  fis8 ^^ [ fis8 ^^ ] fis16 -! [
  fis16 -! fis8 -! ] b,4 \glissando | % 19
  d''2 :32 d2 :32 | \barNumberCheck #20
  \arpeggioBracket <b, b>4\arpeggio ^^ _\! _\ff r2. | % 21
  \tempo 4=90 \arpeggioArrowUp
  r4 _\pp <g' a d>4\arpeggio r4 r4 | % 22
  r4 <d g a b>4\arpeggio r4 r4 | % 23
  b4 :32 b8 [ d8 ] b4 :32
  a8 [ g8 ] | % 24
  a8 [ b8 d8 e8 ] b4
  :32 r4 | % 25
  g4 :32 g8 [ a8 ] g4 :32
  a8 [ g8 ] | % 26
  a8 [ g8 g8 e8 ] g4
  :32 r4 | % 27
  d'4 :32 d8 [ b8 ] a4 :32
  g8 [ e8 ] | % 28
  a8 [ g8 g8 b8 ] a4
  :32 r4 | % 29
  d4 :32 d8 [ a8 ] b4 :32
  a8 [ b8 ] | \barNumberCheck #30
  b2 :32 r4
  <a' a'>4\arpeggio | % 31
  \time 6/8  R2. | % 32
  r2 <a a'>4\arpeggio | % 33
  R2. | % 34
  r2 <a a'>4\arpeggio | % 35
  R2.*11 | % 46
  b,4. :32 _\p b4. :32 | % 47
  a2. :32 | % 48
  R2.*11 | % 59
  e'4. :32 _\pp r4 r8 | \barNumberCheck #60
  \numericTimeSignature\time 4/4  \tempo 4=76 R1*12 | % 72
  R1*4 ^\markup{ \bold {Adagio} } | % 76
  \key d \major \tempo 4=80 r8 _\mp b'8 [ b8 a8
  ] b8 [ b8 b8 a8 ] | % 77
  b2. :64 r4 | % 78
  r8 b8 [ b8 d8 ] e8 [
  d8 cis8 a8 ] | % 79
  fis2 :32 r4 b8 [ d8 ] | \barNumberCheck
  #80
  fis2 :32 e4. :32 d8 | % 81
  fis8 [ a8 a8 fis8 ]
  b,4 :32 fis'8 [ a8 ] | % 82
  b,4 :32 fis'8 [ a8 ] e8 [
  d8 ] cis4 :32 | % 83
  b2 :32 r2 | % 84
  R1*2 | % 86
  r2. a,,4 \glissando _\p | % 87
  d''2 :32 cis2 :32 | % 88
  b2 :32 a2 :32 | % 89
  a2 :32 b2 :32 | \barNumberCheck #90
  a2 :32 a2 :32 | % 91
  \time 6/8 b,,4 _\p fis'8 fis,4
  fis'8 | % 92
  b,4 fis'8 fis,4 fis'8 | % 93
  b,4 fis'8 d,4 fis'8 | % 94
  g,8 :32 [ d'8 :32 d8 :32 ] b4 :16
  fis8 :32 | % 95
  e4. :32 a4. :32 | % 96
  d,2. :32 | % 97
  g'4 r8 fis4 r8 | % 98
  e4 r8 d4 r8 | % 99
  g2. :32 | \barNumberCheck #100
  fis16 [ _\< b16 e16 d16
  e16 fis16 ]
  <fis b>8 \arpeggio [ <b e>8
  \arpeggio <b fis'>8 ] \arpeggio | % 101
  cis4 :16 _\! _\f d8 e8
  [ d8 cis8 ] | % 102
  b4. :64 b'4. :64 | % 103
  cis,8 :32 [ d8 :32 e8 :32 ]
  d8 :32 [ cis8 :32 a8 :32 ] | % 104
  fis2. :64 _\> | % 105
  r8 _\! _\p e8 [ e'8 ] r8 fis,8 [
  fis'8 ] | % 106
  r8 a,8 [ a'8 ] r8 b,8 [ b'8
  ] | % 107
  a,,16 [ a'16 a,16 a'16 a,16
  a'16 ] <e' b'>8 [ <b e>8 <e,
  b'>8 ] | % 108
  e,,16 [ _\< a16 b16 e16 a16
  b16 ] e,16 [ a16 b16 e16
  a16 b16 ] | % 109
  \numericTimeSignature\time 4/4  \tempo 4=68 d2 :32 _\mf
  _\! e2 :32 | \barNumberCheck #110
  fis4. :32 e8 :64 d2 :32 | % 111
  b4 :32 g8 [ a8 ] b4 :32
  e8 [ d8 ] | % 112
  e2 :32 a,,,4 \glissando a'''4 | % 113
  R1*8 | % 121
  \tempo 4=132 R1 | % 122
  \arpeggioBracket
  <b,,, b'>4\arpeggio -! ^^ _\f r4 r2 | % 123
  R1 | % 124
  <b b'>4\arpeggio -! ^^ r4 r2 | % 125
  <b b'>4\arpeggio -! ^^ r4 r2 | % 126
  <b b'>4\arpeggio -! ^^ r4 <b b'>4\arpeggio -! ^^
  r4 | % 127
  <b b'>4\arpeggio -! ^^ r4 <b b'>4\arpeggio -! ^^
  r4 | % 128
  b8 -! [ _\pp _\< b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 129
  b8 -! [ _\! _\mf _\< b8 -! b8 -! b8
  -! ] b8 -! [ b8 -! b8 -! b8 -! ] |
  \barNumberCheck #130
  b8 -! [ _\! _\ff b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 131
  b8 -! [ b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 132
  b8 -! [ _\fp _\< b16 -! a16 ] b8 -!
  [ d8 -! ] fis,4 -! fis8 -! [ a8 -! ]
  | % 133
  <b b'>4\arpeggio -! ^^ _\! _\ff r4 <b b'>4\arpeggio -! ^^ r4 | % 134
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 135
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 136
  a8 -! [ _\fp _\< a16 -! a16 ] a8 -!
  [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 137
  <a a'>4\arpeggio -! ^^ _\! _\ff r4 <a a'>4\arpeggio -! ^^ r4 | % 138
  d8 -! r8 a8 -! r8 r8 a8 -! [ d8 -!
  fis8 -! ] | % 139
  e8 -! r8 a,8 -! r8 r8 a8 -! [
  e'8 -! a8 -! ] | \barNumberCheck #140
  fis8 -! r8 d8 -! r8 r8 e8 -! [
  a8 -! e'8 -! ] | % 141
  d8 -! r8 b8 -! r8 r8 fis8 -! [
  a8 -! \once \override NoteHead.style = ##f d8 -!
  ] | % 142
  <e, e'>4\arpeggio -! ^^ r4 r4 <e e'>4\arpeggio
  -! ^^ | % 143
  <d, d'>4\arpeggio -! ^^ r4 r4 <d' d'>4\arpeggio -!
  ^^ | % 144
  e,4 \glissando -! _\mf _\< e'4 \glissando -!
  e,4 \glissando -! e''4 \glissando -! | % 145
  e,,4 \glissando -! _\! e'''4 \glissando -!
  fis,,,8 -! [ _\< fis8 -! fis8 -! fis8 -! ] | % 146
  g8 -! [ _\! _\ff g8 -! g8 -! g8 -! ]
  a8 -! [ a8 -! a8 -! a8 -! ] | % 147
  a8 -! [ _\fp _\< a16 -! a16 ] a8 -!
  [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 148
  b8 -! _\! _\f r8 fis8 -! r4 fis8 -! [
  b8 -! d8 -! ] | % 149
  b8 -! [ _\fp _\< b16 -! b16 ] b8 -!
  [ b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | \barNumberCheck #150
  g8 -! _\! _\f r8 d8 -! r4 d8 -! [ g8
  -! b8 -! ] | % 151
  fis8 -! [ _\fp _\< fis16 -! fis16 ]
  fis8 -! [ fis8 -! ] fis8 -! [ fis8 -!
  fis8 -! fis8 -! ] | % 152
  b8 -! _\! r8 fis8 -! r4 fis8 -! [ b8
  -! d8 -! ] | % 153
  a8 -! [ _\fp _\< a16 -! a16 ] a8 -!
  [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 154
  d8 -! [ _\! _\f _\< d16 -! d16 ]
  d8 -! [ d8 -! ] d8 -! [ d8
  -! d8 -! d8 -! ] | % 155
  b4 \glissando _\! b'4 \glissando b,4
  \glissando b''4 \glissando | % 156
  <b,, b'>4\arpeggio -> _\f r4 b'4.
  :32 cis8 | % 157
  d4 :32 b4 :32 g'4. :32 e8 | % 158
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | % 159
  fis8 -! [ fis8 -! fis8 -! fis8 -! ]
  fis8 -! r8 fis8 -! r8 | \barNumberCheck #160
  b2 :32 b,4. :32 cis8 | % 161
  d4 :32 b4 :32 g'4. :32 fis8 | % 162
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8
  | % 163
  a8 -! [ a8 -! e'8 -! a,8 -!
  ] fis'8 -! r8 a,8 -! r8 | % 164
  fis2 ~ :32 -> fis2 :32 | % 165
  fis4 :32 r8 fis8 fis8 r8 a,8 r8 | % 166
  e'4 :32 r8 g8 b8 r8 e,8 r8 | % 167
  e4 r8 g8 b8 r8 e,8 r8 | % 168
  e4 r8 e8 a8 r8 e8 r8 | % 169
  e4 _\< r8 e8 a8 r8 e8 r8 |
  \barNumberCheck #170
  fis8 [ fis8 ] r8 fis8 fis8 r8
  fis8 r8 | % 171
  b8 [ b8 ] r8 b8 b8 r8
  b8 r8 | % 172
  a4 :32 _\! b4 :32 a4 :32 b4 :32
  | % 173
  e,4 :8 e4 :8 e4 :8 e4 :8 | % 174
  e4 :8 ^ "rit." \startTrillSpan e4 :8 \stopTrillSpan
  e4 :8 e4 :8 | % 175
  d1 :32 ^\markup{ \bold {a tempo} } _\mf | % 176
  e1 :32 | % 177
  fis2. :32 e4 :32 | % 178
  d2. :32 a4 | % 179
  b2 :32 b2 :32 | \barNumberCheck #180
  b2 :32 cis4 :32 d4 :32 | % 181
  e1 :32 ^ "rit." \startTrillSpan | % 182
  d1 :32 ^\markup{ \bold {a tempo} } _\mf \stopTrillSpan | % 183
  e1 :32 | % 184
  fis2. :32 e4 :32 | % 185
  d2. :32 a4 | % 186
  b4. :32 ^ "rit." \startTrillSpan b8 \stopTrillSpan
  b4. :64 b8 | % 187
  e2 :32 a,8 [ a8 a8
  a8 ] | % 188
  d,2 :32 ^\markup{ \bold {a tempo} } _\ff a2 :32 | % 189
  fis'2 :32 e2 :32 | \barNumberCheck #190
  g2 :32 ^ "rit." \startTrillSpan g2 :32
  \stopTrillSpan | % 191
  a1 :32 | % 192
  d,,4 \glissando _\p _\< a''4 \glissando
  d,,4 \glissando a''4 \glissando | % 193
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 194
  d,,4 \glissando _\! _\ff a''4 \glissando
  d,,4 \glissando a''4 \glissando | % 195
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 196
  d,,4 \glissando d''''4 r2 \bar "|."
}


\score {
  <<
    \new NumberedStaff {
      \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzhenger } } ##f
    }
  >>
}
