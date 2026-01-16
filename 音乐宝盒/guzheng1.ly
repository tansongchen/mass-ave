\version "2.24.4"
\pointAndClickOff
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title =  "音乐宝盒"
  subtitle = "古筝 1 分谱"
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

guzhengyi = \relative b' {
  \override Glissando.style = #'zigzag
  | % 1
  \tempo 4=126 b8 -! [ _\p b8 -! fis8 -!
  b8 -! ] d8 -! [ b8 -! fis8 -!
  a8 -! ] | % 2
  b8 -! [ b8 -! fis8 -! b8 -! ]
  d8 -! [ b8 -! fis8 -! a8 -! ] | % 3
  b8 -! [ b8 -! fis8 -! b8 -! ]
  d8 -! [ b8 -! fis8 -! b8 -! ] | % 4
  b8 -! [ b8 -! fis8 -! b8 -! ]
  d8 -! [ b8 -! fis8 -! b8 -! ]
  | % 5
  b8 -! [ b8 -! fis8 -! b8 -! ]
  d8 -! [ b8 -! fis8 -! b8 -! ] | % 6
  b8 -! [ b8 -! g8 -! b8 -! ]
  e8 -! [ b8 -! d8 -! e8 -! ]
  | % 7
  b8 -! [ b8 -! g8 -! b8 -! ]
  e8 -! [ b8 -! d8 -! e8 -! ]
  | % 8
  b8 -! [ b8 -! g8 -! b8 -! ]
  e8 -! [ b8 -! d8 -! e8 -! ]
  | % 9
  fis4 :32 fis,4 :32 fis'4 \glissando
  d,,4 \glissando | \barNumberCheck #10
  b''2 :32 b,4. :32 cis8 | % 11
  d4 :32 b4 :32 g'4. :32 e8 | % 12
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | % 13
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  b,,4 \glissando | % 14
  b''2 :32 b,4. :32 cis8 | % 15
  d4 :32 b4 :32 g'4. :32 fis8 | % 16
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8 | % 17
  e16 -! [ e16 -! e8 -! ] e8 ^^ [
  e8 ^^ ] e16 -! [ e16 -! e8 -! ]
  e8 ^^ [ e8 ^^ ] | % 18
  fis16 -! [ _\< fis16 -! fis8 -! ]
  fis8 ^^ [ fis8 ^^ ] fis16 -! [ fis16 -!
  fis8 -! ] fis8 ^^ [ fis8 ^^ ] | % 19
  fis,4 \glissando d''4 \glissando fis,,4
  \glissando -! b''4 \glissando -! | \barNumberCheck #20
  \arpeggioBracket <b,,, b'>4\arpeggio ^^ _\! _\ff r4 r2 | % 21
  \tempo 4=90 R1*2 | % 23
  r4 \arpeggioArrowUp <a'' e'>4 \arpeggio _\pp r2 | % 24
  r4 <a e'>4 \arpeggio r2 | % 25
  r4 <a e'>4 \arpeggio r2 | % 26
  r4 <a e'>4 \arpeggio r2 | % 27
  r4 <a e'>4 \arpeggio r2 | % 28
  r4 <a e'>4 \arpeggio r2 | % 29
  r4 <a e'>4 \arpeggio r2 | \barNumberCheck #30
  r4 <a e'>4 \arpeggio r2 | % 31
  \time 6/8  d8 [ _\mp e16 e8
  e16 ] e8 [ d8 a8 ] | % 32
  d8 [ e16 e8 d16 ]
  e8 a4 | % 33
  d,8 [ e16 e8 e16 ]
  e8 [ d8 a8 ] | % 34
  d8 [ e16 e8 d16 ]
  e8 a4 | % 35
  fis16 [ _\< a16 fis16 a16
  fis16 a16 ] e8. [ _\! fis16
  e16 d16 ] | % 36
  e2 :32 r16 a,16 [ d16 e16 ]
  | % 37
  fis16 [ a16 fis16 a16
  fis16 a16 ] e8. [ f16
  e16 d16 ] | % 38
  a4. :128 g4. :128 | % 39
  R2.*7 | % 46
  e4. :128 _\p fis4. :128 | % 47
  e2. :128 | % 48
  R2.*11 | % 59
  b4. :128 _\pp r4. | \barNumberCheck #60
  \numericTimeSignature\time 4/4  \tempo 4=76 R1*12 | % 72
  R1*4 ^\markup{ \bold {Adagio} } | % 76
  \key d \major \tempo 4=80 R1*11 | % 87
  r2. fis'8 [ _\mp a8 ] | % 88
  b4 :32 b8 [ d8 ] e16 ( [
  e,8. ) ] e8 [ fis8 ] | % 89
  a4 :32 a8 [ cis8 ] d16 ( [
  d,8. ) ] d8 [ b8 ] | \barNumberCheck #90
  a'8 [ fis8 e8 d8 ] e4 :32
  d8 [ cis8 ] | % 91
  \time 6/8  b2 :32 r4 | % 92
  R2.*2 | % 94
  b8 [ e8 d8 ] fis4. | % 95
  R2. | % 96
  d,8 [ a'8 e'8 ] fis4 r8 | % 97
  R2.*2 | % 99
  e2. :32 | \barNumberCheck #100
  cis2. :32 | % 101
  b,4 r8 fis4 r8 | % 102
  g2. :32 | % 103
  e'8 [ b'8 ] r8 a,4 e''8 | % 104
  d,8 [ a'8 e'8 ] d4. :32 | % 105
  r8 <b e>8 -! [ <b e>8 -! ] r8
  <b fis'>8 -! [ <b fis'>8 -! ] | % 106
  r8 <e g>8 -! [ <e g>8 -! ] r8 <g b>8 -! [
  <g b>8 -! ] | % 107
  e'8 :32 [ d8 :32 a8 :32 ] e4
  :16 d8 :32 | % 108
  e2. :64 | % 109
  \numericTimeSignature\time 4/4  \tempo 4=68 <d a'>8 [ _\mf
  <a' d>8 <d fis>8 <a d>8 ] <a, e'>8 [
  <e' a>8 <a e'>8 <e a>8 ] | \barNumberCheck
  #110
  <b fis'>8 [ <fis' b>8 <b d>8 <fis b>8
  ] <a, d>8 [ <d a'>8 <a' d>8 <d, a'>8
  ] | % 111
  <g d'>8 [ <d' g>8 <g b>8 <d
  g>8 ] <e, b'>8 [ <e b'>8 <b' e>8
  <e, b'>8 ] | % 112
  a,4 \glissando a''4 \glissando a,,,4
  \glissando a'''4 | % 113
  R1*8 | % 121
  \tempo 4=132 R1*2 | % 123
  <b,,, b'>4\arpeggio ^^ -! _\f r4 r2 | % 124
  \arpeggioBracket
  r2 <b b'>4\arpeggio ^^ -! r4 | % 125
  r2 <b b'>4\arpeggio ^^ -! r4 | % 126
  r4 <b b'>4\arpeggio ^^ -! r4 <b b'>4\arpeggio ^^
  -! | % 127
  r4 <b b'>4\arpeggio ^^ -! r4 <b b'>4\arpeggio ^^
  -! | % 128
  d8 -! [ _\pp _\< d8 -! d8 -!
  d8 -! ] d8 -! [ d8 -! d8 -!
  d8 -! ] | % 129
  d8 -! [ _\! _\mf _\< d8 -! d8 -!
  d8 -! ] d8 -! [ d8 -! d8 -!
  d8 -! ] | \barNumberCheck #130
  b'8 -! [ _\! _\ff b8 -! b8 -!
  b8 -! ] d8 -! [ d8 -! d8 -!
  d8 -! ] | % 131
  b8 -! [ b8 -! d8 -! d8 -! ]
  b8 -! [ b8 -! a8 -! a8 -! ]
  | % 132
  b1 :32 -! _\fp _\< | % 133
  b8 -! [ _\! _\ff b16 -! b16 ]
  fis8 -! [ b8 -! ] d8 -! [ b8
  -! fis8 -! a8 -! ] | % 134
  b8 -! [ b8 -! b8 -! b8 -! ]
  d8 -! [ d8 -! d8 -! d8 -! ]
  | % 135
  b8 -! [ b8 -! d8 -! d8 -! ]
  a8 -! [ a8 -! b8 -! b8 -! ]
  | % 136
  a,4 \glissando _\fp _\< e'''2. :32
  | % 137
  e8 -! [ _\! _\ff e16 -! e16 ]
  a,8 -! [ e'8 -! ] a8 -! [ e8
  -! d8 -! e8 -! ] | % 138
  fis2 :32 ^^ d2 :32 ^^ | % 139
  e2 :32 ^^ a2 :32 ^^ | \barNumberCheck #140
  fis2 :32 ^^ e2 :32 ^^ | % 141
  fis2 :32 ^^ d2 :32 ^^ | % 142
  e8 -> -! [ fis8 -> -! d8 e8
  ] b8 [ b8 b8 b8 ] | % 143
  d8 -> -! [ e8 b8 d8 ]
  a8 [ a8 a8 a8 ] | % 144
  e,4 \glissando _\mf _\< b''8 [ b8 ]
  d8 [ d8 e8 e8 ] | % 145
  d8 [ _\! _\f _\< d8 b8 b8 ]
  a2 :32 | % 146
  b8 [ _\! _\ff b8 d8 d8 ]
  a2 :32 | % 147
  e8 -! [ _\fp _\< e16 -! e16 ] e8 -!
  [ e8 -! ] e8 -! [ e8 -! e8 -!
  e8 -! ] | % 148
  b8 -! [ _\! _\f b8 -! d8 -! d8 -! ]
  b8 -! [ b8 -! a8 -! a8 -! ] | % 149
  b1 :32 -! _\fp _\< | \barNumberCheck #150
  d8 -! [ _\! _\f d8 -! e8 -! e8 -! ]
  d8 -! [ d8 -! b8 -! b8 -! ] | % 151
  a8 -! [ _\fp _\< a16 -! a16 ] a8 -!
  [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 152
  b8 -! [ _\! _\ff b8 -! d8 -! d8 -! ]
  a8 -! [ a8 -! b8 -! b8 -! ] | % 153
  a,4 \glissando _\fp _\< e'''2. :32
  | % 154
  fis,8 [ _\! _\f _\< fis8 a8 a8 ]
  e8 [ e8 fis8 fis8 ] | % 155
  b,4 \glissando b'4 \glissando b,4
  \glissando b''4 \glissando | % 156
  <b,, b'>4\arpeggio -> _\! _\f r4 fis2
  :32 | % 157
  g1 :32 | % 158
  fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 fis16 -! [ fis16 -!
  fis8 -! ] fis4 \glissando | % 159
  fis''2. :32 fis4 \glissando |
  \barNumberCheck #160
  fis,,1 :32 | % 161
  g1 :32 | % 162
  a1 :32 | % 163
  a2. :32 r4 | % 164
  d,2 :32 -> d,4 \glissando d''4 | % 165
  R1 | % 166
  r2 d,,4 \glissando d''4 | % 167
  R1 | % 168
  r2 a,4 \glissando a''4 | % 169
  R1*3 | % 172
  a,,4 \glissando a'4 \glissando a,4
  \glissando a''4 \glissando | % 173
  a,,4 \glissando a'4 \glissando a,4
  \glissando a''4 \glissando | % 174
  a,,4 \glissando ^ "rit." \startTrillSpan a'''4
  \stopTrillSpan r2 | % 175
  a,,1 :32 ^\markup{ \bold {a tempo} } _\mf | % 176
  a1 :32 | % 177
  d,2. :32 a'4 :32 | % 178
  a1 :32 | % 179
  g1 :32 | \barNumberCheck #180
  e1 :32 | % 181
  a,4 \glissando ^ "rit." \startTrillSpan a'4
  \glissando a,4 \glissando a'''4 \stopTrillSpan | % 182
  a,,1 :32 ^\markup{ \bold {a tempo} } _\mf | % 183
  a1 :32 | % 184
  d,2. :32 a'4 :32 | % 185
  a1 :32 | % 186
  g1 :32 ^ "rit." \startTrillSpan | % 187
  a,4 \glissando \stopTrillSpan a'4 \glissando
  a,2 \glissando | % 188
  \clef "treble" fis'''2 :32 ^\markup{ \bold {a tempo} }
  _\ff e2 :32 | % 189
  \times 2/3  {
    e4 a4 e4
  }
  d2 :32 | \barNumberCheck #190
  \times 2/3  {
    b2 :32 ^ "rit." \startTrillSpan d4
  }
  \stopTrillSpan g2 :32 | % 191
  e,1 :32 | % 192
  d,4 \glissando _\p _\< a''4 \glissando d,,4
  \glissando a''4 \glissando | % 193
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 194
  d,,4 \glissando _\! _\ff a''4 \glissando d,,4
  \glissando a''4 \glissando | % 195
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 196
  d,,,4 \glissando d''''4 r2 \bar "|."
}

\score {
  <<
    \new NumberedStaff {
      \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzhengyi } } ##f
    }
  >>
}
