\version "2.24.4"
\pointAndClickOff
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title =  "音乐宝盒"
  subtitle = "二胡分谱"
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

erhu = \relative g' {
  | % 1
  \tempo 4=126 R1*5 | % 6
  r2 r8 g8 -! [ _\mp _\< b8 -! d8 -! ] | % 7
  e8 -! r8 b8 -! r8 d8 -! r8 e8
  -! r8 | % 8
  g8 -! r8 d8 -! r8 e8 -! r8 g8
  -! r8 | % 9
  cis,1 :32 _\! _\ff | \barNumberCheck #10
  d2 :32 b4. ^^ cis8 ^^ | % 11
  d4 ^^ b4 ^^ b4. ^^ b8 ^^ | % 12
  ais1 ~ :32 | % 13
  ais2 :32 ais8 -! [ ais8 -! ais8 -!
  ais8 -! ] | % 14
  b2 :32 b4. ^^ cis8 ^^ | % 15
  d4 ^^ b4 ^^ e4. ^^ d8 ^^
  | % 16
  cis4 b8 [ cis8 ] cis4
  b8 [ cis8 ] | % 17
  e4 d8 [ e8 ] e4 d8
  [ e8 ] | % 18
  fis1 ~ :32 _\< | % 19
  fis2 :32 fis,8 -! [ fis8 -! fis8
  -! fis8 -! ] | \barNumberCheck #20
  fis4 ^^ _\! _\ff r2. | % 21
  \tempo 4=90 R1*4 | % 25
  d8 ( [ _\mf e8 ) g8 ( d'8 ) ]
  b8. ( [ d32 b32 ) ] a8 ( [
  g8 ) ] | % 26
  g2 ~ g8 r4. | % 27
  d'8 ( [ e8 b8 d8 ) ]
  a8. ( [ b32 a32 ) ] g8 ( [ e8 ) ] | % 28
  a2. r4 | % 29
  d,8 ( [ dis8 ) g8 ( d'8 ) ]
  b4 a8 ( [ g8 ) ] | \barNumberCheck
  #30
  g2. r4 | % 31
  \time 6/8  r4 r16 d16 -! ^ "pizz." _\mp a'8 -! [
  d,8 -! ] r8 | % 32
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 33
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 34
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 35
  r4 r16 d16 -! b'8 -! [ fis8 -! ] r8 | % 36
  r4 r16 d16 -! b'8 -! [ fis8 -! ] r8 | % 37
  r4 r16 d16 -! a'8 -! [ f8 -! ] r8 | % 38
  R2.*3 | % 41
  f2 _\mp ^ "arco" r16 g16 ( [ a16 d16
  ) ] | % 42
  c4 c16 ( [ d16 ] a16 [
  c16 ) g16 ( a16 f16 g16 ) ] | % 43
  a8 r16 d,16 ( [ f16 g16 ) ]
  a4. | % 44
  bes4. a4. | % 45
  r4. cis8 [ cis8 cis8 ] | % 46
  cis4. b4. | % 47
  cis4. cis4. | % 48
  cis4. cis4 cis16 ( [ dis16 )
  ] | % 49
  cis4. cis4. | \barNumberCheck #50
  cis4 cis16 ( [ dis16 ) ] cis8
  ( [ b8 gis8 ) ] | % 51
  b4. b4. | % 52
  b4. b4 cis8 | % 53
  gis2. | % 54
  R2. | % 55
  r8 r16 a8 [ _\p ^ "pizz." a16 ] a8 r8 r8 | % 56
  r8 r16 a8 [ a16 ] a8 r8 r8 | % 57
  gis2 ~ ^ "arco" gis8 [ \once \omit TupletBracket
  \times 2/3  {
    gis16 ( a16 gis16 ) ]
  }
  | % 58
  fis2. | % 59
  e4. _\p r4. | \barNumberCheck #60
  \numericTimeSignature\time 4/4  \tempo 4=76 R1*12 | % 72
  R1*4 ^\markup{ \bold {Adagio} } | % 76
  \key d \major \tempo 4=80 fis'2 _\pp _\< e2 | % 77
  fis2. _\! _\mp _\> r4 | % 78
  fis2 _\! _\p _\< e2 | % 79
  fis2. _\! _\mp r4 | \barNumberCheck #80
  d2 d2 | % 81
  d2. r4 | % 82
  fis2 e2 | % 83
  fis2. fis,8 ( [ _\mf a8 ) ] | % 84
  b4 b8 ( [ d8 ) ] e8. [ b16 ]
  b8 ( [ a8 ) ] | % 85
  fis2. fis8 ( [ a8 ) ] | % 86
  b8. [ b16 ] b8 ( [ d8 ) ] e8.
  [ a,16 ] a8 [ a'8 ~ ] | % 87
  a4 fis2 fis8 ( [ a8 ) ] | % 88
  b4 b8 ( [ a8 ) ] fis16 ( [
  e8. ) ] e8 ( [ fis8 ) ] | % 89
  a4 fis8 ( [ e8 ) ] d4 r8.
  b16 | \barNumberCheck #90
  a'8 ( [ fis8 ) e8 ( d8 ) ]
  e4 d8 ( [ cis8 ) ] | % 91
  \time 6/8  b2 r4 | % 92
  R2.*5 | % 97
  b'8 ( [ a8 ) b8 ] a4
  fis8 | % 98
  e8 ( [ fis8 ) cis8 ] a4. | % 99
  R2.*4 | % 103
  cis'8 ( [ d8 e8 ) ] d8 ( [
  cis8 a8 ) ] | % 104
  cis,4 d8 cis8 ( [ a8 fis8
  ) ] | % 105
  e4 r8 fis4 r8 | % 106
  g4 _\< r8 b8 cis4 | % 107
  e8 ( [ _\! _\mf d8 c8 ) ] b4
  b8 | % 108
  a2 ~ :32 a8 :64 [ a8 ] _\ff | % 109
  \numericTimeSignature\time 4/4  \tempo 4=68 d4. a8
  e'4. a,8 | \barNumberCheck #110
  fis'4. e8 d4. a8 | % 111
  b8. [ b16 ] b4 b8 [
  b8 cis8 d8 ] | % 112
  e2 _\> r2 | % 113
  a,2 _\! _\mp a2 | % 114
  fis8 ( [ cis'8 ) a8 ( d,8 ) ]
  fis4 g8 ( [ a8 ) ] | % 115
  b8 ( [ a8 g8 fis8 ) ] e2 | % 116
  fis2 r2 | % 117
  R1*2 | % 119
  b8 [ _\f a8 g8 fis8 ] g2 |
  \barNumberCheck #120
  g2 _\> d2 | % 121
  \tempo 4=132 R1*7 | % 128
  fis8 -! [ _\! _\p _\pp _\< fis8 -! fis8 -!
  fis8 -! ] fis8 -! [ fis8 -! fis8 -!
  fis8 -! ] | % 129
  fis8 -! [ _\! _\mf _\< fis8 -! fis8 -!
  fis8 -! ] fis8 -! [ fis8 -! fis8 -!
  fis8 -! ] | \barNumberCheck #130
  b2 ^^ _\! _\ff d2 ^^ | % 131
  b4 ^^ d4 ^^ b4 ^^ a4 ^^ | % 132
  b1 :32 ^^ _\fp _\< | % 133
  b4 -! ^^ _\! _\ff r2. | % 134
  b2 ^^ d2 ^^ | % 135
  b4 ^^ d4 ^^ a4 ^^ b4 ^^ | % 136
  cis1 :32 ^^ _\fp _\< | % 137
  cis4 -! ^^ _\! _\ff r4 d4 e4 | % 138
  fis2 ^^ d2 ^^ | % 139
  e2 ^^ a2 ^^ | \barNumberCheck #140
  fis2 ^^ e2 ^^ | % 141
  fis2 ^^ d2 ^^ | % 142
  e8 -> -! [ fis8 d8 e8 ] r2 | % 143
  d8 -> -! [ e8 b8 d8 ]
  a2 | % 144
  r4 _\mf _\< b4 d4 e4 | % 145
  d4 _\! _\f _\< b4 a4 r4 | % 146
  b4 _\! _\ff d4 a2 | % 147
  a1 :32 ^^ _\fp _\< | % 148
  b4 ^^ _\! _\f d4 ^^ b4 ^^ a4
  ^^ | % 149
  b1 :32 ^^ _\fp _\< | \barNumberCheck #150
  d4 ^^ _\! _\f e4 ^^ d4 ^^ b4
  ^^ | % 151
  a1 :32 ^^ _\fp _\< | % 152
  b4 ^^ _\! _\ff d4 ^^ a4 ^^ b4
  ^^ | % 153
  cis1 :32 ^^ _\fp _\< | % 154
  fis4 _\! _\f _\< a4 e4 fis4
  | % 155
  d1 :32 | % 156
  d2 ^^ _\! _\ff b4. ^^ cis8 ^^ | % 157
  d4 ^^ b4 ^^ b4. ^^ b8 ^^
  | % 158
  ais1 ~ :32 | % 159
  ais2 :32 ais8 -! [ ais8 -! ais8 -!
  ais8 -! ] | \barNumberCheck #160
  b2 b4. ^^ cis8 ^^ | % 161
  d4 ^^ b4 ^^ e4. ^^ d8 ^^ | % 162
  cis4 b8 ( [ cis8 ) ] cis4
  b8 ( [ cis8 ) ] | % 163
  cis1 :32 | % 164
  d4 -> fis4 e8 ( [ fis8 ) ]
  d4 | % 165
  fis1 | % 166
  b,4 e4 d4 cis4 | % 167
  b8 ( [ e8 ~ ] e2. ) | % 168
  a,4 g'4 fis4 e4 | % 169
  a,8 ( [ _\< _\< b8 cis8 d8 )
  ] e8 ( [ fis8 g8 a8 ) ]
  | \barNumberCheck #170
  fis,8 ( [ gis8 ais8 b8 ) ] \stemDown
  cis8 ( [ d8 e8 fis8 ) ] | % 171
  b,8 ( [ cis8 d8 e8 ) ]
  fis8 ( [ gis8 a8 b8 ) ] | % 172
  a4 _\! _\! _\ff b4 a4 a4 | % 173
  a8 [ a8 b8 b8 ] a8
  [ a8 b8 b8 ] | % 174
  a8 [ ^ "rit." \startTrillSpan a8 \stopTrillSpan
  a,8 a8 ] a8 [ a8 a8
  a8 ] | % 175
  a2. ^\markup{ \bold {a tempo} } a4 | % 176
  e'2. a,4 | % 177
  fis'2. e4 | % 178
  d2. a4 | % 179
  b4. b8 b2 | \barNumberCheck #180
  b2 cis4 d4 | % 181
  e4 ^ "rit." \startTrillSpan e4 r4 a,4
  \stopTrillSpan | % 182
  d2. ^\markup{ \bold {a tempo} } a4 | % 183
  e'2. a,4 | % 184
  fis'2. e4 | % 185
  d2. a4 | % 186
  b4. ^ "rit." \startTrillSpan b8 \stopTrillSpan
  b4. b8 | % 187
  a4 a4 a4 a4 | % 188
  fis'2 -- -> ^\markup{ \bold {a tempo} } _\ff e2
  -- -> | % 189
  \times 2/3  {
    e4 a4 e4
  }
  d4 cis4 | \barNumberCheck #190
  \times 2/3  {
    b4 ^ "rit." \startTrillSpan cis4
    \stopTrillSpan d4
  }
  g4 d4 ~ | % 191
  d1 | % 192
  fis1 :32 _\< | % 193
  fis1 :32 | % 194
  fis2 _\! _\ff fis2 | % 195
  fis2 fis2 | % 196
  fis2 r2 \bar "|."
}

\score {
  <<
    \new NumberedStaff {
      \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \erhu } } ##f
    }
  >>
}
