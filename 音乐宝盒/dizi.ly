\version "2.24.4"
\pointAndClickOff
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title =  "音乐宝盒"
  subtitle = "笛子分谱"
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

dizi = \relative e' {
  | % 1
  R1*6 | % 7
  e8 -! _\f _\< r8 b8 -! r8 d8 -! r8 e8 -! r8 | % 8
  g8 -! r8 d8 -! r8 e8 -! r8 g8 -! r8 | % 9
  fis1 \trill _\! _\ff | \barNumberCheck #10
  fis4 ^^ r4 b,4. ^^ cis8 ^^ | % 11
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^ | % 12
  fis4 e8 [ fis8 ] fis4 e8 [
  fis8 ] | % 13
  fis2 \trill r2 | % 14
  fis2 \trill b,4. ^^ cis8 ^^ | % 15
  d4 ^^ b4 ^^ g'4. ^^ fis8 ^^ | % 16
  e4 d8 [ e8 ] e4 d8 [
  e8 ] | % 17
  e2 \trill r2 | % 18
  fis4 _\< e8 [ fis8 ] fis4 e8
  [ fis8 ] | % 19
  fis2 \trill fis8 ^^ [ e8 ^^ d8 ^^
  cis8 ^^ ] | \barNumberCheck #20
  b4 ^^ _\! _\ff r2. | % 21
  \tempo 4=90 R1*2 | % 23
  d8 ( [ _\mf e8 g8 a8 ) ] b8.
  ( [ a32 b32 ) ] a8 ( [ g8 ) ]
  | % 24
  a4 b2 r4 | % 25
  d,8 ( [ e8 ) g8 d'8 ] b8.
  ( [ d32 b32 ) ] a8 ( [ g8 ) ] | % 26
  g2 ~ g8 r8 r4 | % 27
  d'8 ( [ e8 b8 d8 ) ]
  a8. ( [ b32 a32 ) ] g8 ( [ e8 ) ] | % 28
  a2. r4 | % 29
  d,8 ( [ dis8 ) g8 d'8 ] b4
  a8 ( [ g8 ) ] | \barNumberCheck #30
  g2. \trill r4 | % 31
  \time 6/8  R2.*7 | % 38
  r2 r8 c,16 ( [ _\mf d16 ) ] | % 39
  f8 [ g16 g8 g16 ] g8 [
  f8 c8 ] | \barNumberCheck #40
  f8 [ g16 g8 f16 ] g8 [
  c8 ] r8 | % 41
  f,8 [ g16 g8 g16 ] g8 [
  f8 c8 ] | % 42
  f8 [ g16 g8 f16 ] g8 [
  c8 ] r8 | % 43
  a16 ( [ c16 a16 c16
  a16 c16 ) ] g8. ( [ a16
  g16 f16 ) ] | % 44
  d2 c16 ( [ d16 f16 g16 ) ] | % 45
  gis16 ( [ cis16 a16 cis16
  gis16 cis16 ) ] fis,4 \once \omit TupletBracket
  \times 2/3  {
    gis16 ( [ fis16 e16 ) ]
  }
  | % 46
  fis4 e8 fis8 ( [ gis8 b8 ) ]
  | % 47
  cis4. cis4. | % 48
  cis4. \trill cis4 cis16 [ \stemDown
  dis16 ( ] | % 49
  cis4. ) cis4. | \barNumberCheck #50
  cis4 \trill cis16 ( [ dis16 ) ]
  cis8 ( [ b8 gis8 ) ] | % 51
  b4. b4. | % 52
  b4. \trill b4 cis8 | % 53
  gis2. | % 54
  r2 e16 ( [ fis16 gis16 b16 ) ] | % 55
  gis8 -! r16 fis8 -! [ fis16 -! ] fis8
  -! [ e8 -! cis8 -! ] | % 56
  e8 -! r8 r8 r8 e16 [ fis16 gis16
  b16 ] | % 57
  gis8 -! r16 fis8 -! [ fis16 -! ] fis8
  -! [ e8 -! c8 -! ] | % 58
  b8 -! r8 r8 a'8 [ _\> gis8 fis8 ]
  | % 59
  e4. _\! _\p r4 r8 | \barNumberCheck #60
  \numericTimeSignature\time 4/4  \tempo 4=76 R1*12 | % 72
  R1*4 ^\markup{ \bold {Adagio} } | % 76
  \key d \major \tempo 4=80 R1*2 | % 78
  r2 r4 b'8 ( [ _\mp d8 ) ] | % 79
  e8 ( [ d8 cis8 a8 ) ]
  fis2 | \barNumberCheck #80
  b2 a2 | % 81
  b2. \trill r4 | % 82
  r4 d8 ( [ fis8 ) ] cis8 ( [ \stemDown
  b8 ) ] a4 | % 83
  b2. \trill r4 | % 84
  R1*3 | % 87
  r2 r4 fis8 ( [ a8 ) ] | % 88
  \acciaccatura { cis8 } b4 b8 ( [ a8
  ) ] fis16 ( [ e8. ) ] e8 ( [ fis8 )
  ] | % 89
  \acciaccatura { b8 } a4 fis8 [ e8
  \prall ] d4 r8. b16 | \barNumberCheck #90
  a'8 ( [ fis8 ) e8 d8 \prall ]
  e4 d8 ( [ cis8 ) ] | % 91
  \time 6/8  b2 \trill r4 | % 92
  R2.*11 | % 103
  cis'8 ( [ _\f d8 e8 ) ] d8 (
  [ cis8 a8 ) ] | % 104
  fis2. | % 105
  g8 ( [ fis8 g8 ) ] d'4
  fis,8 | % 106
  cis'8 ( [ b8 cis8 ) ] fis4
  cis8 | % 107
  a2. \trill | % 108
  e2 r8 a,8 _\mf | % 109
  \numericTimeSignature\time 4/4  \tempo 4=68 a'2 \trill
  cis4 e4 | \barNumberCheck #110
  d2 \trill r2 | % 111
  d2 \trill r2 | % 112
  e2 \trill r4 a,8 [ _\f fis8 ~ ] | % 113
  fis4 a8 e'4 d4 cis8 | % 114
  d2 r4 d,8 ( [ cis8 ) ] | % 115
  b8 ( [ cis8 d8 ) ] cis4 ( d8
  ) e4 | % 116
  d2 r2 | % 117
  R1*4 | % 121
  \tempo 4=132 R1*9 | \barNumberCheck #130
  b2 ^^ _\ff d2 ^^ | % 131
  b4 ^^ d4 ^^ b4 ^^ a4 ^^ | % 132
  b1 ^^ | % 133
  R1 | % 134
  b2 ^^ d2 ^^ | % 135
  b4 ^^ d4 ^^ a4 ^^ b4 ^^ | % 136
  e1 ^^ | % 137
  R1 | % 138
  fis2 ^^ d2 ^^ | % 139
  e2 ^^ a2 ^^ | \barNumberCheck #140
  fis2 ^^ e2 ^^ | % 141
  fis2 ~ ^^ fis2 ^^ | % 142
  e8 -> [ fis8 d8 e8 ] b2
  | % 143
  d8 -> [ e8 b8 d8 ] a2 | % 144
  r4 _\mf _\< b4 d4 e4 | % 145
  d4 _\! _\f _\< b4 a4 r4 | % 146
  b4 _\! _\ff d4 a2 | % 147
  R1 | % 148
  b4 ^^ _\f d4 ^^ b4 ^^ a4 ^^ | % 149
  b1 ^^ _\fp _\< | \barNumberCheck #150
  d4 ^^ _\! _\f e4 ^^ d4 ^^ b4 ^^ | % 151
  a1 ^^ _\fp _\< | % 152
  b4 ^^ _\! _\ff d4 ^^ a4 ^^ b4 ^^ | % 153
  e1 ^^ | % 154
  fis4 _\f _\< a4 e4 fis4 | % 155
  b1 | % 156
  b4 ^^ _\! _\ff r4 b,4. ^^ cis8 ^^ | % 157
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^ | % 158
  fis4 e8 [ fis8 ] fis4 e8 [
  fis8 ] | % 159
  fis2 \trill r2 | \barNumberCheck #160
  fis2 \trill b,4. ^^ cis8 ^^ | % 161
  d4 ^^ b4 ^^ g'4. ^^ fis8 ^^ | % 162
  e4 d8 ( [ e8 ) ] e4 d8 ( [
  e8 ) ] | % 163
  e1 \trill | % 164
  a,4 -> fis'4 e8 ( [ fis8 ) ]
  d4 | % 165
  fis1 | % 166
  b,4 e4 d4 cis4 | % 167
  b8 ( [ e8 ~ ] e2. ) | % 168
  e4 g4 fis4 e4 | % 169
  a2. _\< _\< g4 | \barNumberCheck #170
  fis2. e4 | % 171
  fis2. e4 | % 172
  a2. _\! _\! _\ff r4 | % 173
  e2. r4 | % 174
  r4 ^ "rit." \startTrillSpan a,4 \stopTrillSpan d4
  e4 | % 175
  d2. ^\markup{ \bold {a tempo} } a4 | % 176
  e'2. a,4 | % 177
  fis'2. e4 | % 178
  d2. a4 | % 179
  b4. b8 b2 | \barNumberCheck #180
  b2 cis4 d4 | % 181
  e4 ^ "rit." \startTrillSpan e4 e4 a,4
  \stopTrillSpan | % 182
  d2. ^\markup{ \bold {a tempo} } a4 | % 183
  e'2. a,4 | % 184
  fis'2. e4 | % 185
  d2. a4 | % 186
  b4. ^ "rit." \startTrillSpan b8 \stopTrillSpan
  b4. b8 | % 187
  cis2 d4 cis4 | % 188
  d2 -- -> _\ff ^\markup{ \bold {a tempo} } cis2 -- ->
  | % 189
  \times 2/3  {
    e4 a4 e4
  }
  d4 cis4 | \barNumberCheck #190
  \times 2/3  {
    b4 ^ "rit." \startTrillSpan cis4 \stopTrillSpan
    d4
  }
  g4 d4 ~ | % 191
  d1 | % 192
  a'1 _\< | % 193
  a1 | % 194
  a2 _\! _\ff a2 | % 195
  a2 a2 | % 196
  a2 r2 \bar "|."
}

\score {
  <<
    \new NumberedStaff {
      \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \dizi } } ##f
    }
  >>
}
