\version "2.24.4"
\pointAndClickOff
\header {
  title =  "音乐宝盒"
  composer = "编曲：罗畯文"
  arranger = "制谱：谭淞宸"
  copyright = "© Mass Ave 国乐团 2026"
  tagline = "为 Mass Ave 国乐团在常春藤春晚中的演出而作"
  instrument = " "
}

\include "../numbered.ly"

\paper {
  left-margin = 1.3\cm
  #(define fonts
     (set-global-fonts
      #:roman "Lilypond Serif, Noto Serif CJK SC, Songti SC, STSong"
      #:sans "Lilypond Sans Serif, Noto Sans CJK SC, PingFang SC, STXihei"
      #:typewriter "Lilypond Monospace, LXGW WenKai, Kaiti SC, STKaiti, SimKai"
      ))
}

\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}

keytime = { \key d \major \time 4/4 }

keytimeAlt = { \key c \major \time 4/4 }

dizi =  \relative e' {
  \numericTimeSignature | % 1
  \tempo 4=126 R1*6 | % 7
  e8 -! _\f _\< r8 b8 -! r8 d8 -! r8
  e8 -! r8 | % 8
  g8 -! r8 d8 -! r8 e8 -! r8 g8 -! r8
  | % 9
  fis1 \trill -! _\! _\ff | \barNumberCheck #10
  fis4 ^^ r4 b,4. ^^ cis8 ^^ | % 11
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^
  | % 12
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
  d2 r4 | % 45
  R2. | % 46
  r4 e8 fis8 ( [ gis8 b8 ) ] | % 47
  cis4. cis4. | % 48
  cis4. \trill cis4 cis16 [
  dis16 ( ] | % 49
  cis4. ) cis4. | \barNumberCheck #50
  cis4 \trill cis16 ( [ dis16 ) ]
  cis8 ( [ b8 gis8 ) ] | % 51
  b4. b4. | % 52
  b4. \trill b4 cis8 | % 53
  gis2. | % 54
  r2 e16 ( [ fis16 gis16 b16 ) ]
  | % 55
  gis8 -! r16 fis8 -! [ fis16 -! ] fis8
  -! [ e8 -! cis8 -! ] | % 56
  e8 -! r8 r8 r8 e16 [ fis16 gis16
  b16 ] | % 57
  gis8 -! r16 fis8 -! [ fis16 -! ] fis8
  -! [ e8 -! c8 -! ] | % 58
  b8 -! r8 r8 a'8 [ _\> gis8 fis8 ]
  | % 59
  e4. _\! _\p r4 r8 | \barNumberCheck #60
  \numericTimeSignature\time 4/4  \tempo 4=68 R1*18 | % 78
  \tempo 4=80 r2 ^\markup{ \bold {Adagio} } r4 b'8 ( [ _\mp d8 ) ] | % 79
  e8 ( [ d8 cis8 a8 ) ]
  fis2 | \barNumberCheck #80
  b2 a2 | % 81
  b2. \trill r4 | % 82
  r4 d8 ( [ fis8 ) ] cis8 ( [
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
  b2 \trill r2 | % 92
  \time 6/8  R2.*12 | % 104
  cis'8 ( [ _\f d8 e8 ) ] d8 (
  [ cis8 a8 ) ] | % 105
  fis2. | % 106
  \once \override NoteHead.style = ##f g8 ( [ fis8
  g8 ) ] d'4 fis,8 | % 107
  cis'8 ( [ b8 cis8 ) ] fis4
  cis8 | % 108
  a2. \trill | % 109
  \numericTimeSignature\time 4/4  \tempo 4=68 e2. a,4
  | \barNumberCheck #110
  a'2 \trill cis4 e4 | % 111
  d2 \trill r2 | % 112
  d2 \trill r2 | % 113
  e2 \trill r4 a,8 [ _\f fis8 ~ ] | % 114
  fis4 a8 e'4 d4 cis8 | % 115
  d2 r4 d,8 ( [ cis8 ) ] | % 116
  b8 ( [ cis8 d8 ) ] cis4 ( d8
  ) e4 | % 117
  d2 r2 | % 118
  R1*13 | % 131
  \tempo 4=132 b2 ^^ _\ff d2 ^^ | % 132
  b4 ^^ d4 ^^ b4 ^^ a4 ^^ | % 133
  b1 ^^ | % 134
  R1 | % 135
  b2 ^^ d2 ^^ | % 136
  b4 ^^ d4 ^^ a4 ^^ b4 ^^ | % 137
  e1 ^^ | % 138
  R1 | % 139
  fis2 ^^ d2 ^^ | \barNumberCheck #140
  e2 ^^ a2 ^^ | % 141
  fis2 ^^ e2 ^^ | % 142
  fis2 ~ ^^ fis2 ^^ | % 143
  e8 -> [ fis8 d8 e8 ] b2 | % 144
  d8 -> [ e8 b8 d8 ] a2
  | % 145
  r4 _\mf _\< b4 d4 e4 | % 146
  d4 _\! _\f _\< b4 a4 r4 | % 147
  b4 _\! _\ff d4 a2 | % 148
  R1 | % 149
  b4 ^^ _\f d4 ^^ b4 ^^ a4 ^^ |
  \barNumberCheck #150
  b1 ^^ _\fp _\< | % 151
  d4 ^^ _\! _\f e4 ^^ d4 ^^ b4 ^^
  | % 152
  a1 ^^ _\fp _\< | % 153
  b4 ^^ _\! _\ff d4 ^^ a4 ^^ b4 ^^ | % 154
  e1 ^^ | % 155
  fis4 _\f _\< a4 e4 fis4 | % 156
  b1 | % 157
  b4 ^^ _\! _\ff r4 b,4. ^^ cis8 ^^
  | % 158
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^ | % 159
  fis4 e8 [ fis8 ] fis4 e8 [
  fis8 ] | \barNumberCheck #160
  fis2 \trill r2 | % 161
  fis2 \trill b,4. ^^ cis8 ^^ | % 162
  d4 ^^ b4 ^^ g'4. ^^ fis8 ^^ | % 163
  e4 d8 ( [ e8 ) ] e4 d8 ( [
  e8 ) ] | % 164
  e1 \trill | % 165
  a,4 -> fis'4 e8 ( [ fis8 ) ]
  d4 | % 166
  fis1 | % 167
  b,4 e4 d4 cis4 | % 168
  b8 ( [ e8 ~ ] e2. ) | % 169
  e4 g4 fis4 e4 | \barNumberCheck #170
  a2. _\< _\< g4 | % 171
  fis2. e4 | % 172
  fis2. e4 | % 173
  a2. _\! _\! _\ff r4 | % 174
  e2. r4 | % 175
  r4 ^ "rit." \startTrillSpan a,4 d4 e4 | % 176
  d2. ^\markup{ \bold {a tempo} } a4 | % 177
  e'2. a,4 | % 178
  fis'2. e4 | % 179
  d2. a4 | \barNumberCheck #180
  b4. b8 b2 | % 181
  b2 cis4 d4 | % 182
  e4 ^ "rit." \startTrillSpan e4 e4 a,4
  \stopTrillSpan | % 183
  d2. ^\markup{ \bold {a tempo} } a4 | % 184
  e'2. a,4 | % 185
  fis'2. e4 | % 186
  d2. a4 | % 187
  b4. ^ "rit." \startTrillSpan b8 \stopTrillSpan
  b4. b8 | % 188
  cis2 d4 cis4 | % 189
  d2 -- -> _\ff ^\markup{ \bold {a tempo} } cis2 -- ->
  | \barNumberCheck #190
  \times 2/3  {
    e4 a4 e4
  }
  d4 cis4 | % 191
  \times 2/3  {
    b4 ^ "rit." \startTrillSpan cis4 \stopTrillSpan
    d4
  }
  g4 d4 ~ | % 192
  d1 | % 193
  a'1 _\< | % 194
  a1 | % 195
  a2 _\! _\ff a2 | % 196
  a2 r2 \bar "|."
}

erhu =  \relative g' {
  \numericTimeSignature | % 1
  R1*5 | % 5
  r2 r8 g8 -! [ _\mp _\< b8 -! d8 -! ] | % 7
  e8 -! r8 b8 -! r8 d8 -! r8 e8
  -! r8 | % 8
  g8 -! r8 d8 -! r8 e8 -! r8 g8
  -! r8 | % 9
  cis,1 :32 _\! _\ff | \barNumberCheck #10
  d2 :32 b4. ^^ cis8 ^^ | % 11
  d4 ^^ b4 ^^ b4. ^^ b8 ^^
  | % 12
  ais1 ~ :32 | % 13
  ais2 :32 ais8 -! [ ais8 -! ais8 -!
  ais8 -! ] | % 14
  b2 :32 b4. ^^ cis8 ^^ | % 15
  d4 ^^ b4 ^^ e4. ^^ d8 ^^ | % 16
  cis4 b8 [ cis8 ] cis4
  b8 [ cis8 ] | % 17
  e4 d8 [ e8 ] e4 d8
  [ e8 ] | % 18
  fis1 ~ :32 _\< | % 19
  fis2 :32 fis,8 -! [ fis8 -! fis8
  -! fis8 -! ] | \barNumberCheck #20
  fis4 ^^ _\! _\ff r2. | % 21
  R1*4 | % 25
  d8 ( [ _\mf e8 ) g8 ( d'8 ) ]
  b8. ( [ d32 b32 ) ] a8 ( [
  g8 ) ] | % 26
  g2 ~ g8 r4. | % 27
  d'8 ( [ e8 b8 d8 ) ]
  a8. ( [ b32 a32 ) ] g8 ( [ e8 ) ] | % 28
  a2. r4 | % 29
  d,8 ( [ dis8 ) g8 ( d'8 ) ]
  b4 a8 ( [ g8 ) ] |
  \barNumberCheck #30
  g2. r4 | % 31
  \time 6/8  r4 r16 d16 -! ^ "pizz." _\mp a'8 -! [
  d,8 -! ] r8 | % 32
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 33
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 34
  r4 r16 d16 -! a'8 -! [ d,8 -! ] r8 | % 35
  r4 r16 d16 -! b'8 -! [ fis8 -! ] r8 | % 36
  r4 r16 d16 -! b'8 -! [ fis8 -! ] r8
  | % 37
  r4 r16 d16 -! a'8 -! [ f8 -! ] r8 | % 38
  R2.*3 | % 41
  f2 _\mp ^ "arco" r16 g16 ( [ a16 d16
  ) ] | % 42
  c4 c16 ( [ d16 ] a16 [
  c16 ) g16 ( a16 f16 g16 ) ]
  | % 43
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
  \numericTimeSignature\time 4/4  R1*16 | % 76
  fis'2 _\pp _\< e2 | % 77
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
  a4 fis2 fis8 ( [ a8 ) ]
  | % 88
  b4 b8 ( [ a8 ) ] fis16 ( [
  e8. ) ] e8 ( [ fis8 ) ] | % 89
  a4 fis8 ( [ e8 ) ] d4 r8.
  b16 | \barNumberCheck #90
  a'8 ( [ fis8 ) e8 ( d8 ) ]
  e4 d8 ( [ cis8 ) ] | % 91
  b2 r2 | % 92
  \time 6/8  R2.*6 | % 98
  b'8 ( [ a8 ) b8 ] a4
  fis8 | % 99
  e8 ( [ fis8 ) cis8 ] a4. |
  \barNumberCheck #100
  R2.*4 | % 104
  cis'8 ( [ d8 e8 ) ] d8 ( [
  cis8 a8 ) ] | % 105
  cis,4 d8 cis8 ( [ a8 fis8
  ) ] | % 106
  e4 r8 fis4 r8 | % 107
  g4 _\< r8 b8 cis4 | % 108
  e8 ( [ _\! _\mf d8 c8 ) ] b4
  b8 | % 109
  \numericTimeSignature\time 4/4  a2. :64 a4
  | \barNumberCheck #110
  d4. a8 e'4. a,8 | % 111
  fis'4. e8 d4. a8 | % 112
  b8. [ b16 ] b4 b8 [
  b8 cis8 d8 ] | % 113
  e2 _\> r2 | % 114
  a,2 _\! _\mp a2 | % 115
  fis8 ( [ cis'8 ) a8 ( d,8 ) ]
  fis4 g8 ( [ a8 ) ] | % 116
  b8 ( [ a8 g8 fis8 ) ] e2 | % 117
  fis2 r2 | % 118
  R1*2 | \barNumberCheck #120
  b8 [ _\f a8 g8 fis8 ] g2 | % 121
  g2 _\> d2 | % 122
  R1*7 | % 129
  fis8 -! [ _\! _\p _\pp _\< fis8 -! fis8 -!
  fis8 -! ] fis8 -! [ fis8 -! fis8 -!
  fis8 -! ] | \barNumberCheck #130
  fis8 -! [ _\! _\mf _\< fis8 -! fis8 -!
  fis8 -! ] fis8 -! [ fis8 -! fis8 -!
  fis8 -! ] | % 131
  b2 ^^ _\! _\ff d2 ^^ | % 132
  b4 ^^ d4 ^^ b4 ^^ a4 ^^ | % 133
  b1 :32 ^^ _\fp _\< | % 134
  b4 ^^ _\! _\ff r2 r4 | % 135
  b2 ^^ d2 ^^ | % 136
  b4 ^^ d4 ^^ a4 ^^ b4 ^^ | % 137
  cis1 :32 ^^ _\fp _\< | % 138
  cis4 ^^ _\! _\ff r4 d4 e4 | % 139
  fis2 ^^ d2 ^^ | \barNumberCheck #140
  e2 ^^ a2 ^^ | % 141
  fis2 ^^ e2 ^^ | % 142
  fis2 ^^ d2 ^^ | % 143
  e8 -> [ fis8 d8 e8 ] r2 | % 144
  d8 -> [ e8 b8 d8 ] a2
  | % 145
  r4 _\mf _\< b4 d4 e4 | % 146
  d4 _\! _\f _\< b4 a4 r4 | % 147
  b4 _\! _\ff d4 a2 | % 148
  a1 :32 ^^ _\fp _\< | % 149
  b4 ^^ _\! _\f d4 ^^ b4 ^^ a4
  ^^ | \barNumberCheck #150
  b1 :32 ^^ _\fp _\< | % 151
  d4 ^^ _\! _\f e4 ^^ d4 ^^ b4
  ^^ | % 152
  a1 :32 ^^ _\fp _\< | % 153
  b4 ^^ _\! _\ff d4 ^^ a4 ^^ b4
  ^^ | % 154
  cis1 :32 ^^ _\fp _\< | % 155
  fis4 _\! _\f _\< a4 e4 fis4
  | % 156
  d1 :32 | % 157
  d2 ^^ _\! _\ff b4. ^^ cis8 ^^
  | % 158
  d4 ^^ b4 ^^ b4. ^^ b8 ^^ | % 159
  ais1 ~ :32 | \barNumberCheck #160
  ais2 :32 ais8 -! [ ais8 -! ais8 -!
  ais8 -! ] | % 161
  b2 b4. ^^ cis8 ^^ | % 162
  d4 ^^ b4 ^^ e4. ^^ d8 ^^ | % 163
  cis4 b8 ( [ cis8 ) ] cis4
  b8 ( [ cis8 ) ] | % 164
  cis1 :32 | % 165
  d4 -> fis4 e8 ( [ fis8 ) ]
  d4 | % 166
  fis1 | % 167
  b,4 e4 d4 cis4 | % 168
  b8 ( [ e8 ~ ] e2. ) | % 169
  a,4 g'4 fis4 e4 |
  \barNumberCheck #170
  a,8 ( [ _\< _\< b8 cis8 d8 )
  ] e8 ( [ fis8 g8 a8 ) ]
  | % 171
  fis,8 ( [ gis8 ais8 b8 ) ]
  cis8 ( [ d8 e8 fis8 ) ] | % 172
  b,8 ( [ cis8 d8 e8 ) ]
  fis8 ( [ gis8 a8 b8 ) ] | % 173
  a4 _\! _\! _\ff b4 a4 a4
  | % 174
  a8 [ a8 b8 b8 ] a8
  [ a8 b8 b8 ] | % 175
  a8 [ a8 a,8 a8 ] a8
  [ a8 a8 a8 ] | % 176
  a2. a4 | % 177
  e'2. a,4 | % 178
  fis'2. e4 | % 179
  d2. a4 | \barNumberCheck #180
  b4. b8 b2 | % 181
  b2 cis4 d4 | % 182
  e4 e4 r4 a,4 | % 183
  d2. a4 | % 184
  e'2. a,4 | % 185
  fis'2. e4 | % 186
  d2. a4 | % 187
  b4. b8 b4. b8 | % 188
  a4 a4 a4 a4 | % 189
  fis'2 -- -> _\ff e2 -- -> | \barNumberCheck #190
  \times 2/3  {
    e4 a4 e4
  }
  d4 cis4 | % 191
  \times 2/3  {
    b4 cis4 d4
  }
  g4 d4 ~ | % 192
  d1 | % 193
  fis1 :32 _\< | % 194
  fis1 :32 | % 195
  fis2 _\! _\ff fis2 | % 196
  fis2 r2 \bar "|."
}

guzhengyi =  \relative b' {
  \override Glissando.style = #'zigzag
  \numericTimeSignature | % 1
  b8 -! [ _\p b8 -! fis8 -! b8 -! ]
  d8 -! [ b8 -! fis8 -! a8 -! ] | % 2
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
  d4 :32 b4 :32 g'4. :32 e8
  | % 12
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
  \glissando b''4 \glissando | \barNumberCheck #20
  \arpeggioBracket <b,,, b'>4\arpeggio ^^ _\! _\ff r4 r2 | % 21
  R1*2 | % 23
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
  \numericTimeSignature\time 4/4  R1*27 | % 87
  r2. fis'8 [ _\mp a8 ] | % 88
  b4 :32 b8 [ d8 ] e16 ( [
  e,8. ) ] e8 [ fis8 ] | % 89
  a4 :32 a8 [ cis8 ] d16 ( [
  d,8. ) ] d8 [ b8 ] | \barNumberCheck #90
  a'8 [ fis8 e8 d8 ] e4 :32
  d8 [ cis8 ] | % 91
  b2 :32 r2 | % 92
  \time 6/8  R2.*3 | % 95
  b8 [ e8 d8 ] fis4. | % 96
  R2. | % 97
  d,8 [ a'8 e'8 ] fis4 r8 | % 98
  R2.*2 | \barNumberCheck #100
  e2. :32 | % 101
  cis2. :32 | % 102
  b,4 r8 fis4 r8 | % 103
  g2. :32 | % 104
  e'8 [ b'8 ] r8 a,4 e''8 | % 105
  d,8 [ a'8 e'8 ] d4. :32 | % 106
  r8 <b e>8 -! [ <b e>8 -! ] r8
  <b fis'>8 -! [ <b fis'>8 -! ] | % 107
  r8 <e g>8 -! [ <e g>8 -! ] r8 <g b>8 -! [
  <g b>8 -! ] | % 108
  e'8 :32 [ d8 :32 a8 :32 ] e4
  :16 d8 :32 | % 109
  \numericTimeSignature\time 4/4  e1 :32 | \barNumberCheck
  #110
  <d a'>8 [ _\mf <a' d>8 <d fis>8 <a
  d>8 ] <a, e'>8 [ <e' a>8 <a e'>8
  <e a>8 ] | % 111
  <b fis'>8 [ <fis' b>8 <b d>8 <fis b>8
  ] <a, d>8 [ <d a'>8 <a' d>8 <d, a'>8
  ] | % 112
  <g d'>8 [ <d' g>8 <g b>8 <d
  g>8 ] <e, b'>8 [ <e b'>8 <b' e>8
  <e, b'>8 ] | % 113
  a,4 \glissando a''4 \glissando a,,,4
  \glissando a'''4 | % 114
  R1*10 | % 124
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
  d8 -! ] | \barNumberCheck #130
  d8 -! [ _\! _\mf _\< d8 -! d8 -!
  d8 -! ] d8 -! [ d8 -! d8 -!
  d8 -! ] | % 131
  b'8 -! [ _\! _\ff b8 -! b8 -!
  b8 -! ] d8 -! [ d8 -! d8 -!
  d8 -! ] | % 132
  b8 -! [ b8 -! d8 -! d8 -! ]
  b8 -! [ b8 -! a8 -! a8 -! ]
  | % 133
  b1 :32 _\fp _\< | % 134
  b8 -! [ _\! _\ff b16 -! b16 -! ]
  fis8 -! [ b8 -! ] d8 -! [ b8
  -! fis8 -! a8 -! ] | % 135
  b8 -! [ b8 -! b8 -! b8 -! ]
  d8 -! [ d8 -! d8 -! d8 -! ]
  | % 136
  b8 -! [ b8 -! d8 -! d8 -! ]
  a8 -! [ a8 -! b8 -! b8 -! ]
  | % 137
  a,4 _\fp _\< e'''2. :32
  | % 138
  e8 -! [ _\! _\ff e16 -! e16 -! ]
  a,8 -! [ e'8 -! ] a8 -! [ e8
  -! d8 -! e8 -! ] | % 139
  fis2 :32 ^^ d2 :32 ^^ | \barNumberCheck #140
  e2 :32 ^^ a2 :32 ^^ | % 141
  fis2 :32 ^^ e2 :32 ^^ | % 142
  fis2 :32 ^^ d2 :32 ^^ | % 143
  e8 [ fis8 d8 e8 ]
  b8 [ b8 b8 b8 ] | % 144
  d8 [ e8 b8 d8 ] a8 [
  a8 a8 a8 ] | % 145
  e,4 \glissando _\mf _\< b''8 [ b8 ]
  d8 [ d8 e8 e8 ] | % 146
  d8 [ _\! _\f _\< d8 b8 b8 ]
  a2 :32 | % 147
  b8 [ _\! _\ff b8 d8 d8 ]
  a2 :32 | % 148
  e8 -! [ _\fp _\< e16 -! e16 -! ] e8
  -! [ e8 -! ] e8 -! [ e8 -! e8 -!
  e8 -! ] | % 149
  b8 -! [ _\! _\f b8 -! d8 -! d8 -! ]
  b8 -! [ b8 -! a8 -! a8 -! ] |
  \barNumberCheck #150
  b1 :32 _\fp _\< | % 151
  d8 -! [ _\! _\f d8 -! e8 -! e8 -! ]
  d8 -! [ d8 -! b8 -! b8 -! ]
  | % 152
  a8 -! [ _\fp _\< a16 -! a16 -! ] a8
  -! [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 153
  b8 -! [ _\! _\ff b8 -! d8 -! d8 -! ]
  a8 -! [ a8 -! b8 -! b8 -! ] | % 154
  a,4 \glissando _\fp _\< e''' ?2.
  :32 | % 155
  fis,8 [ _\! _\f _\< fis8 a8 a8 ]
  e8 [ e8 fis8 fis8 ] | % 156
  b,4 \glissando b'4 \glissando b,4
  \glissando b''4 \glissando | % 157
  <b,, b'>4\arpeggio -> _\! _\f r4 fis2
  :32 | % 158
  g1 :32 | % 159
  fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 fis16 -! [ fis16 -!
  fis8 -! ] fis4 \glissando | \barNumberCheck #160
  fis''2. :32 fis4 \glissando | % 161
  fis,,1 :32 | % 162
  g1 :32 | % 163
  a1 :32 | % 164
  a2. :32 r4 | % 165
  d,2 :32 -> d,4 \glissando d''4 | % 166
  R1 | % 167
  r2 d,,4 \glissando d''4 | % 168
  R1 | % 169
  r2 a,4 \glissando a''4 | \barNumberCheck #170
  R1 | % 171
  R1*2 | % 173
  a,,4 \glissando a'4 \glissando a,4
  \glissando a''4 \glissando | % 174
  a,,4 \glissando a'4 \glissando a,4
  \glissando a''4 \glissando | % 175
  a,,4 \glissando a'''4 r2 | % 176
  a,,1 :32 _\mf | % 177
  a1 :32 | % 178
  d,2. :32 a'4 :32 | % 179
  a1 :32 | \barNumberCheck #180
  g1 :32 | % 181
  e1 :32 | % 182
  a,4 \glissando a'4 \glissando a,4
  \glissando a'''4 \glissando | % 183
  a,,1 :32 _\mf | % 184
  a1 :32 | % 185
  d,2. :32 a'4 :32 | % 186
  a1 :32 | % 187
  g1 :32 | % 188
  a,4 a'4 a,2 | % 189
  fis'''2 :32 _\ff e2 :32 |
  \barNumberCheck #190
  \times 2/3  {
    e4 a4 e4
  }
  d2 :32 | % 191
  \times 2/3  {
    b2 :32 d4
  }
  g2 :32 | % 192
  e,1 :32 | % 193
  d,4 \glissando _\p _\< a''4 \glissando d,,4
  \glissando a''4 \glissando | % 194
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 195
  d,,4 \glissando _\! _\ff a''4 \glissando d,,4
  \glissando a''4 \glissando | % 196
  d,,,4 \glissando d''''4 r2 \bar "|."
}

guzhenger =  \relative g {
  \override Glissando.style = #'zigzag
  \numericTimeSignature | % 1
  R1*5 | % 6
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
  \numericTimeSignature\time 4/4  R1*16 | % 76
  r8 _\mp b'8 [ b8 a8 ] b8 [ b8
  b8 a8 ] | % 77
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
  b2 :32 r2 | % 92
  \time 6/8 b,,4 _\p fis'8 fis,4
  fis'8 | % 93
  b,4 fis'8 fis,4 fis'8 | % 94
  b,4 fis'8 d,4 fis'8 | % 95
  g,8 :32 [ d'8 :32 d8 :32 ] b4 :16
  fis8 :32 | % 96
  e4. :32 a4. :32 | % 97
  d,2. :32 | % 98
  g'4 r8 fis4 r8 | % 99
  e4 r8 d4 r8 | \barNumberCheck #100
  g2. :32 | % 101
  fis16 [ _\< b16 e16 d16
  e16 fis16 ] \arpeggioArrowUp \arpeggioArrowUp
  <fis b>8 \arpeggio [ \arpeggio \arpeggioNormal
  \arpeggioNormal \arpeggioArrowUp \arpeggioArrowUp <b e>8
  \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal \arpeggioArrowUp
  \arpeggioArrowUp <b fis'>8 \arpeggio ] \arpeggio
  \arpeggioNormal \arpeggioNormal | % 102
  cis4 :16 _\! _\f d8 e8
  [ d8 cis8 ] | % 103
  b4. :64 b'4. :64 | % 104
  cis,8 :32 [ d8 :32 e8 :32 ]
  d8 :32 [ cis8 :32 a8 :32 ] | % 105
  fis2. :64 _\> | % 106
  r8 _\! _\p e8 [ e'8 ] r8 fis,8 [
  fis'8 ] | % 107
  r8 a,8 [ a'8 ] r8 b,8 [ b'8
  ] | % 108
  a,,16 [ a'16 a,16 a'16 a,16
  a'16 ] <e' b'>8 [ <b e>8 <e,
  b'>8 ] | % 109
  \numericTimeSignature\time 4/4  a1 :32 | \barNumberCheck
  #110
  d2 :32 _\mf e2 :32 | % 111
  fis4. :32 e8 :64 d2 :32 | % 112
  b4 :32 g8 [ a8 ] b4 :32
  e8 [ d8 ] | % 113
  e2 :32 a,,,4 \glissando a'''4 | % 114
  R1*9 | % 123
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
  b8 -! [ b8 -! b8 -! b8 -! ]
  | \barNumberCheck #130
  b8 -! [ _\! _\mf _\< b8 -! b8 -! b8
  -! ] b8 -! [ b8 -! b8 -! b8 -! ] | % 131
  b8 -! [ _\! _\ff b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 132
  b8 -! [ b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 133
  b8 -! [ _\fp _\< b16 -! a16 -! ] b8
  -! [ d8 -! ] fis,4 -! fis8 -! [ a8
  -! ] | % 134
  <b b'>4\arpeggio -! ^^ _\! _\ff r4 <b b'>4\arpeggio -! ^^ r4 | % 134
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 136
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 137
  a8 -! [ _\fp _\< a16 -! a16 -! ] a8
  -! [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 138
  <a a'>4\arpeggio -! ^^ _\! _\ff r4 <a a'>4\arpeggio -! ^^ r4 | % 138
  d8 -! r8 a8 -! r4 a8 -! [ d8 -!
  fis8 -! ] | \barNumberCheck #140
  e8 -! r8 a,8 -! r4 a8 -! [ e'8
  -! a8 -! ] | % 141
  fis8 -! r8 d8 -! r4 e8 -! [
  a8 -! e'8 -! ] | % 142
  d8 -! r8 b8 -! r4 fis8 -! [
  a8 -! \once \override NoteHead.style = ##f d8 -! ] | % 143
  <e, e'>4\arpeggio -! ^^ r4 r4 <e e'>4\arpeggio
  -! ^^ | % 143
  <d, d'>4\arpeggio -! ^^ r4 r4 <d' d'>4\arpeggio -!
  ^^ | % 144
  e,4 \glissando _\mf _\< e'4 \glissando e,4
  \glissando e''4 \glissando | % 146
  e,,4 \glissando _\! e'''4 \glissando
  fis,,,8 -! [ _\< fis8 -! fis8 -! fis8 -! ] | % 147
  g8 -! [ _\! _\ff g8 -! g8 -! g8 -! ]
  a8 -! [ a8 -! a8 -! a8 -! ]
  | % 148
  a8 -! [ _\fp _\< a16 -! a16 -! ] a8
  -! [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 149
  b8 -! _\! _\f r8 fis8 -! r4 fis8 -! [
  b8 -! d8 -! ] | \barNumberCheck #150
  b8 -! [ _\fp _\< b16 -! b16 -! ] b8
  -! [ b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | % 151
  g8 -! _\! _\f r8 d8 -! r4 d8 -! [ g8
  -! b8 -! ] | % 152
  fis8 -! [ _\fp _\< fis16 -! fis16 -! ]
  fis8 -! [ fis8 -! ] fis8 -! [ fis8
  -! fis8 -! fis8 -! ] | % 153
  b8 -! _\! r8 fis8 -! r4 fis8 -! [ b8
  -! d8 -! ] | % 154
  a8 -! [ _\fp _\< a16 -! a16 -! ] a8
  -! [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 155
  d8 -! [ _\! _\f _\< d16 -! d16 -! ]
  d8 -! [ d8 -! ] d8 -! [ d8
  -! d8 -! d8 -! ] | % 156
  b4 \glissando _\! b'4 \glissando b,4
  \glissando b''4 \glissando | % 157
  <b,, b'>4\arpeggio -> _\f r4 b'4.
  :32 cis8 | % 158
  d4 :32 b4 :32 g'4. :32 e8 | % 159
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | \barNumberCheck #160
  fis8 -! [ fis8 -! fis8 -! fis8 -! ]
  fis8 -! r8 fis8 -! r8 | % 161
  b2 :32 b,4. :32 cis8 | % 162
  d4 :32 b4 :32 g'4. :32 fis8 | % 163
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8
  e16 -! [ e16 -! e8 -! ] e8 ^^ r8
  | % 164
  a8 -! [ a8 -! e'8 -! a,8 -!
  ] fis'8 -! r8 a,8 -! r8 | % 165
  fis2 ~ :32 -> fis2 :32 | % 166
  fis4 :32 r8 fis8 fis8 r8 a,8 r8 | % 167
  e'4 :32 r8 g8 b8 r8 e,8 r8
  | % 168
  e4 r8 g8 b8 r8 e,8 r8 | % 169
  e4 r8 e8 a8 r8 e8 r8 |
  \barNumberCheck #170
  e4 _\< r8 e8 a8 r8 e8 r8
  | % 171
  fis8 [ fis8 ] r8 fis8 fis8 r8
  fis8 r8 | % 172
  b8 [ b8 ] r8 b8 b8 r8
  b8 r8 | % 173
  a4 :32 _\! b4 :32 a4 :32 b4 :32
  | % 174
  e,4 :8 e4 :8 e4 :8 e4 :8 | % 175
  e4 :8 e4 :8 e4 :8 e4 :8 | % 176
  d1 :32 _\mf | % 177
  e1 :32 | % 178
  fis2. :32 e4 :32 | % 179
  d2. :32 a4 | \barNumberCheck #180
  b2 :32 b2 :32 | % 181
  b2 :32 cis4 :32 d4 :32 | % 182
  e1 :32 | % 183
  d1 :32 _\mf | % 184
  e1 :32 | % 185
  fis2. :32 e4 :32 | % 186
  d2. :32 a4 | % 187
  b4. :32 b8 b4. :64 b8 | % 188
  e2 :32 a,8 [ a8 a8
  a8 ] | % 189
  d,2 :32 _\ff a2 :32 | \barNumberCheck #190
  fis'2 :32 e2 :32 | % 191
  g2 :32 g2 :32 | % 192
  a1 :32 | % 193
  d,,4 \glissando _\p _\< a''4 \glissando
  d,,4 \glissando a''4 \glissando | % 194
  d,,4 \glissando a''4 \glissando d,,4
  \glissando a''4 \glissando | % 195
  d,,4 \glissando _\! _\ff a''4 \glissando
  d,,4 \glissando a''4 \glissando | % 196
  d,,4 \glissando d''''4 r2 \bar "|."
}

PartPTwoVoiceOne =  \relative b' {
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  R1*4 | % 5
  b8 -! [ _\f _\< b8 -! fis8 -! b8 -!
  ] d8 -! [ b8 -! fis8 -! b8 -! ] | % 6
  b8 -! [ b8 -! g8 -! b8 -! ]
  e8 -! [ b8 -! d8 -! e8 -! ]
  | % 7
  b8 -! [ b8 -! g8 -! b8 -! ]
  d8 -! [ b8 -! g8 -! b8 -! ]
  | % 8
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 9
  ais1 :32 _\! _\ff | \barNumberCheck #10
  b2 :32 b4. ^^ cis8 ^^ | % 11
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^
  | % 12
  cis1 ~ :32 | % 13
  cis2 :32 cis8 -! [ cis8 -!
  cis8 -! cis8 -! ] | % 14
  d2 :32 b4. ^^ cis8 ^^ | % 15
  d4 ^^ b4 ^^ g'4. ^^ fis8 ^^
  | % 16
  e1 :32 | % 17
  e1 :32 | % 18
  cis1 ~ :32 _\< | % 19
  cis2 :32 ais8 ^^ [ g8 ^^ fis8 ^^
  e8 ^^ ] | \barNumberCheck #20
  d4 ^^ _\! _\ff r2. | % 21
  R1*3 | % 24
  r4 \times 2/3 {
    r8 d8 ( [ _\mf e8 ) ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    g8 ( [ a8 b8 ) ]
  }
  d4 | % 25
  R1 | % 26
  r4 \once \omit TupletBracket
  \times 2/3  {
    b,8 ( [ d8 e8 ) ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    g8 ( [ a8 b8 ) ]
  }
  e4 | % 27
  d8 ( [ e8 ) ] b4 a4 e4
  | % 28
  r4 \once \omit TupletBracket
  \times 2/3  {
    d'8 ( [ b8 a8 ) ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    b8 ( [ a8 g8 ) ]
  }
  e4 | % 29
  c8 ( [ c8 ) dis8 ( a'8 ) ]
  d4 a4 | \barNumberCheck #30
  b2. r4 | % 31
  \time 6/8  d,8 [ ^ "pizz." _\mp e16 e8
  e16 ] e8 [ fis8 a,8 ] | % 32
  d8 [ e16 e8 e16 ] e8 [
  fis8 a,8 ] | % 33
  d8 [ e16 e8 e16 ] e8 [
  fis8 a,8 ] | % 34
  d8 [ e16 e8 e16 ] e8 [
  a8 fis8 ] | % 35
  d8 [ e16 e8 e16 ] e8 [
  fis8 g8 ] | % 36
  d8 [ e16 e8 e16 ] e8 [
  a8 d,8 ] | % 37
  d8 [ fis16 fis8 d16 ] a'8 [
  f8 f8 ] | % 38
  d8 [ f16 f8 d16 ] c'8 [
  a8 ] r8 | % 39
  f8 [ g16 g8 g16 ] g8 [
  f8 c8 ] | \barNumberCheck #40
  f8 [ g16 g8 f16 ] g8 [
  c8 ] r8 | % 41
  f,8 [ g16 g8 g16 ] g8 [
  f8 c8 ] | % 42
  f8 [ g16 g8 f16 ] g8 [
  c8 ] r8 | % 43
  d,2. | % 44
  R2. | % 45
  cis8 ( [ fis8 cis'8 ) ] a8 ( [
  gis8 cis,8 ) ] | % 46
  e4. dis4. | % 47
  e4 e8 b'8 ( [ cis8 ) ] r8 | % 48
  r4 e,8 b'8 ( [ cis8 ) ] r8 | % 49
  r4 dis,8 b'8 ( [ cis8 ) ] r8 |
  \barNumberCheck #50
  r4 dis,8 b'8 ( [ cis8 ) ] r8 | % 51
  r4 dis,8 gis8 ( [ b8 ) ] r8 | % 52
  r4 dis,8 gis8 ( [ b8 cis8 ) ] | % 53
  a8 ( [ gis8 fis8 ) ] d'8 ( [
  cis8 b8 ) ] | % 54
  a4 gis8 r4. | % 55
  R2. | % 56
  r4 _\p e8 fis4. | % 57
  gis4. a8 [ ^ "pizz." gis8 e8 ] | % 58
  e4. cis'8 [ _\> b8 a8 ]
  | % 59
  gis4. _\! _\p r4. | \barNumberCheck #60
  \numericTimeSignature\time 4/4  R1*3 | % 63
  R1*4 | % 67
  R1 | % 68
  e4 ^ "arco" _\mf e'4 dis4 b4 | % 69
  cis4 b8 ( [ a8 ) ] b2
  | \barNumberCheck #70
  cis4 dis8 ( [ e8 ) ] b4
  e,4 | % 71
  fis4. gis8 fis2 | % 72
  gis2 _\mp b2 | % 73
  cis4 b8 ( [ a8 ) ] gis4.
  b8 _\< | % 74
  cis4 _\! _\mf e4 e4. dis8 | % 75
  e4 _\> gis,8 ( [ fis8 ) ] gis4
  ^\fermata r4 | % 76
  d'2 _\! _\pp _\< cis2 | % 77
  d2. _\! _\mp _\> r4 | % 78
  d2 _\! _\p _\< cis2 | % 79
  a2. _\! _\mp r4 | \barNumberCheck #80
  fis'2 e2 | % 81
  fis2. r4 | % 82
  d2 cis2 | % 83
  d2. r4 | % 84
  R1*2 | % 86
  d,2 e2 | % 87
  a2 a2 | % 88
  d,4 e8 ( [ fis8 ) ] a4 cis4
  | % 89
  cis2 b4 fis4 | \barNumberCheck #90
  d'2 cis2 | % 91
  b2 r2 | % 92
  \time 6/8  R2.*2 | % 94
  R2.*5 | % 99
  R2.*4 | % 103
  R2. | % 104
  cis'8 ( [ d8 e8 ) ] d8 ( [
  cis8 a8 ) ] | % 105
  a4 a8 fis8 ( [ d8
  a8 ) ] | % 106
  b4 r8 b4 r8 | % 107
  cis4 _\< r8 d8 e4 | % 108
  a8 ( [ _\! _\mf g8 f8 ) ] e4
  d8 | % 109
  \numericTimeSignature\time 4/4  cis2. :64 _\< a4
  _\! | \barNumberCheck #110
  fis4. fis8 e4. e8 | % 111
  a4. g8 fis4. fis8 | % 112
  g8. [ g16 ] g4 gis8 [ fis8
  gis8 gis8 ] | % 113
  a4 _\> b2 a8 [ _\! _\mf fis8 ~ ] | % 114
  fis4 a8 e'4 d4 cis8 | % 115
  d2 r4 d,8 ( [ cis8 ) ] | % 116
  b8 ( [ cis8 d8 ) ] cis4 ( d8
  ) e4 | % 117
  d2 r2 | % 118
  R1*2 | \barNumberCheck #120
  g'8 [ _\f fis8 e8 d8 ]
  a2 | % 121
  g2 _\> fis2 | % 122
  R1*4 | % 126
  R1*3 | % 129
  b8 -! [ _\! _\p _\pp _\< b8 -! b8 -!
  b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | \barNumberCheck #130
  b8 -! [ _\! _\mf _\< b8 -! b8 -!
  b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | % 131
  b2 ^^ _\! _\ff d2 ^^ | % 132
  b4 ^^ d4 ^^ b4 ^^ a4 ^^ | % 133
  b2 :32 ^^ _\fp _\< fis'4 e8 [
  d8 ] | % 134
  \grace { b8 [ d8 ] } b2 _\! _\ff r2 | % 135
  b2 ^^ d2 ^^ | % 136
  b4 ^^ d4 ^^ a4 ^^ b4 ^^ | % 137
  a2 :32 ^^ _\fp _\< b2 :32 | % 138
  cis2 :32 -! ^^ _\! _\ff d4 e4 | % 139
  fis2 ^^ d2 ^^ | \barNumberCheck #140
  e2 ^^ a2 ^^ | % 141
  d,2 ^^ cis2 ^^ | % 142
  b2 ^^ a2 | % 143
  b4 -> -! g8 [ b8 ] e8 [
  fis16 ( e16 ) ] d8 [ e8 ] | % 144
  a,4 -> -! fis8 [ a8 ] d8 [
  e16 ( d16 ) ] b8 [ d8 ]
  | % 145
  g,2 _\mf _\< g2 | % 146
  fis2 _\! _\f _\< fis2 | % 147
  g2 _\! _\ff e2 | % 148
  e1 :32 ^^ _\fp | % 149
  b'4 ^^ _\f d4 ^^ b4 ^^ a4 ^^ |
  \barNumberCheck #150
  b1 :32 ^^ _\fp _\< | % 151
  d4 ^^ _\! _\f e4 ^^ d4 ^^ b4
  ^^ | % 152
  a1 :32 ^^ _\fp _\< | % 153
  b4 ^^ _\! _\ff d4 ^^ a4 ^^ b4
  ^^ | % 154
  a1 :32 ^^ _\fp _\< | % 155
  fis'4 _\! _\f _\< a4 e4 fis4
  | % 156
  fis1 :32 | % 157
  fis2 ^^ _\! _\ff b,4. ^^ cis8 ^^
  | % 158
  d4 ^^ b4 ^^ g'4. ^^ e8 ^^ | % 159
  cis1 ~ :32 | \barNumberCheck #160
  cis2 :32 cis8 -! [ cis8 -!
  cis8 -! cis8 -! ] | % 161
  d2 b,4. ^^ cis8 ^^ | % 162
  d4 ^^ b4 ^^ g'4. ^^ fis8 ^^ | % 163
  e1 :32 | % 164
  e1 :32 | % 165
  fis4 -> a4 a4 a4 | % 166
  a2 g4 fis4 | % 167
  g2 g2 | % 168
  g2 g2 | % 169
  \once \override NoteHead.style = ##f \stemNeutral cis2
  cis2 | \barNumberCheck #170
  cis2. _\< cis4 | % 171
  ais8 [ ais8 ] r8 ais8 ais8 r8
  ais8 r8 | % 172
  b8 [ b8 ] r8 b8 b8 r8
  b8 r8 | % 173
  cis8 [ _\! _\ff cis8 ] r8 cis8
  cis8 r8 cis8 r8 | % 174
  cis8 [ cis8 cis8 cis8 ]
  cis8 [ cis8 cis8 cis8 ] | % 175
  cis8 [ cis8 a8 a8 ]
  d8 [ d8 e8 e8 ] | % 176
  fis2. fis,4 | % 177
  e2. e4 | % 178
  a2. g4 | % 179
  fis2. fis4 | \barNumberCheck #180
  g4. g8 g2 | % 181
  gis4 fis4 gis4 b4 | % 182
  g4 fis4 e4 e4 | % 183
  fis2. fis4 | % 184
  e2. e4 | % 185
  a2. g4 | % 186
  fis2. fis4 | % 187
  g4. g8 g4. g8 | % 188
  e4 e4 b'4 a4 | % 189
  a2 -- -> _\ff a2 -- -> | \barNumberCheck #190
  \times 2/3  {
    b4 b4 b4
  }
  a4 a4 | % 191
  \times 2/3  {
    g4 a4 b4
  }
  g2 :32 | % 192
  g1 | % 193
  d'1 :32 _\< | % 194
  d1 :32 | % 195
  d2 _\! _\ff d2 | % 196
  d2 r2 \bar "|."
}

PartPFourVoiceOne =  \relative b, {
  \clef "bass" \numericTimeSignature\time 4/4 \key c \major | % 1
  R1*2 | % 3
  b8 -! _\mf r8 fis8 -! r4 fis8 -! [ b8
  -! d8 -! ] | % 4
  b8 -! r8 fis8 -! r4 fis8 -! [ b8 -!
  d8 -! ] | % 5
  b8 -! r8 fis8 -! r4 fis8 -! [ b8 -!
  d8 -! ] | % 6
  e8 -! r8 b8 -! r8 r8 g8 -! [ _\< b8
  -! d8 -! ] | % 7
  g8 -! [ g8 -! ] r8 g8 -! g8
  -! r8 d8 -! r8 | % 8
  e8 -! [ e8 -! ] r8 e8 -! e8
  -! r8 e8 -! r8 | % 9
  fis1 :32 _\! _\ff | \barNumberCheck #10
  b,8 -! [ b8 -! d8 -! b8 -! ]
  fis8 -! [ fis8 -! b8 -! ] r8 | % 11
  b8 -! r8 b8 -! [ b8 -! ] b8 -! [
  g8 -! e8 -! ] r8 | % 12
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | % 13
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | % 14
  b8 -! [ b8 -! d8 -! b8 -! ]
  fis8 -! [ fis8 -! b8 -! ] r8 | % 15
  b8 -! r8 b8 -! [ b8 -! ] b8 -! [
  g8 -! e8 -! ] r8 | % 16
  a16 -! [ a16 -! a8 -! ] a8 ^^ r8
  a16 -! [ a16 -! a8 -! ] a8 ^^ r8 | % 17
  a16 -! [ a16 -! a8 -! ] a8 ^^ [
  a8 ] a16 -! [ a16 -! a8 -! ]
  a8 ^^ [ a8 ] | % 18
  fis16 -! [ _\< fis16 -! fis8 -! ]
  fis8 ^^ [ fis8 ^^ ] fis16 -! [ fis16 -!
  fis8 -! ] fis8 ^^ [ fis8 ^^ ] | % 19
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ [ fis8 ^^ ] fis16 -! [ fis16 -!
  fis8 -! ] fis8 ^^ [ fis8 ^^ ] | \barNumberCheck #20
  b4 ^^ _\! _\ff r2. | % 21
  r8 _\mf ^ "pizz." d8 b'4 r2 | % 22
  g,8 [ d'8 ] b'4 r2 | % 23
  g,8 [ d'8 g8 d8 ] r8 d8 r4
  | % 24
  g,8 [ d'8 g8 d8 ] r8 d8 r4
  | % 25
  e,8 [ b'8 e8 b8 ] r8 e8 r4
  | % 26
  e,8 [ b'8 e8 b8 ] r8 e8 r4
  | % 27
  c,8 [ g'8 e'8 g,8 ] r8 e'8
  r4 | % 28
  c,8 [ g'8 e'8 g,8 ] r8 e'8
  r4 | % 29
  c,8 [ g'8 es'8 g,8 ] r8
  es'8 r4 | \barNumberCheck #30
  g,8 [ d'8 a'8 b8 ]
  d4 r8 a,8 _\mp ^ "pizz." | % 31
  \time 6/8  d8 r8 r8 r4 a8 | % 32
  d8 r8 r16 d16 -! fis8 -! [ d8 -!
  a8 -! ] | % 33
  fis8 r8 r16 d'16 -! fis8 -! [ d8
  -! a8 -! ] | % 34
  fis8 r8 r16 d'16 -! fis8 -! [ d8
  -! a8 -! ] | % 35
  g4 r16 d'16 g16 [ d16 g,8
  g'16 g16 ] | % 36
  g8 r8 r16 b,16 -! g'8 -! [ d8 -!
  g,8 -! ] | % 37
  c4 r16 b16 d8 [ d8 g,16
  g16 ] | % 38
  c4 r16 g'16 c,8 [ c8 ] r8 | % 39
  f'8 r8 r8 r4 c8 | \barNumberCheck #40
  f8 r8 r8 f8 [ c8 f,8 ] | % 41
  d8 r8 r8 d'8 r8 a8 | % 42
  d,8 r8 r8 d'8 r8 a8 | % 43
  bes2. ^ "arco" | % 44
  g4. f4. | % 45
  fis4. fis8 [ cis8 a'8 ]
  | % 46
  gis4. fis4. | % 47
  a,4 e'8 b'8 ( [ cis8 ) ] r8 | % 48
  a,4 e'8 b'8 ( [ cis8 ) ] r8
  | % 49
  a,4 dis8 b'8 ( [ cis8 ) ] r8 |
  \barNumberCheck #50
  a,4 dis8 b'8 ( [ cis8 ) ] r8 | % 51
  gis,4 dis'8 gis8 ( [ b8 ) ] r8
  | % 52
  gis,4 dis'8 gis8 ( [ b8
  cis8 ) ] | % 53
  cis4 gis8 b8 ( [ d8
  b8 ) ] | % 54
  f'4. d16 ( [ b16 gis16
  eis16 d16 b16 ) ] | % 55
  fis4 -! _\mp r8 r8 cis'8 [ ^ "pizz." cis,8 ]
  | % 56
  fis4 r8 r8 fis8 [ cis'8 ] | % 57
  c4 r8 r8 c8 [ c,8 ] | % 58
  b'4 r8 r8 b8 r8 | % 59
  b4. _\p r4. | \barNumberCheck #60
  \numericTimeSignature\time 4/4  R1*3 | % 63
  R1 | % 64
  e4 ^ "arco" _\< b'4 b4 _\! _\f
  a8 ( [ gis8 ) ] | % 65
  fis8 ( [ e8 ) fis8 ( gis8 )
  ] b,4. b8 | % 66
  e8 b4 fis'8 e2 | % 67
  e8 ( [ _\> fis8 ) gis8 ( a8
  ) ] fis4. gis8 | % 68
  gis2 _\! _\mp b2 | % 69
  a4 b8 ( [ cis8 ) ] b2
  | \barNumberCheck #70
  a4 b8 ( [ a8 ) ] gis2 | % 71
  fis2 fis8 ( [ _\< gis8 ) a8
  ( b8 ) ] | % 72
  e,4 _\! _\f _\markup{ \italic {appassionato} }
  e'4 dis8 ( [ b16 cis16 ) ]
  dis8 ( [ e8 ) ] | % 73
  e,4 cis'4 b4. b,8 | % 74
  e8 ( [ fis8 ) gis8 ( a8 ) ]
  fis4. e8 | % 75
  e2. _\> r4 | % 76
  g2 _\! _\pp _\< a2 | % 77
  b,1 _\! _\mp _\> | % 78
  g'2 _\! _\p _\< a2 | % 79
  d1 _\! _\mp | \barNumberCheck #80
  g,,2 a2 | % 81
  b1 | % 82
  g'2 a2 | % 83
  b,1 | % 84
  g2 a2 | % 85
  b2 b2 | % 86
  g2 a2 | % 87
  d,2 d2 | % 88
  g2 a2 | % 89
  fis2 fis2 | \barNumberCheck #90
  e2 fis2 | % 91
  b2 r2 | % 92
  \time 6/8  R2.*2 | % 94
  cis'4 _\f d8 e8 ( [ d8 )
  cis8 ] | % 95
  b4. fis4. | % 96
  e8 ( [ b'8 ) d8 ] cis8 ( [
  d8 ) a'8 ] | % 97
  fis2. | % 98
  R2. | % 99
  R2. | \barNumberCheck #100
  e4 e8 d8 ( [ c8 )
  d8 ] | % 101
  b4. cis4. | % 102
  b,8 -! [ _\mp ^ "pizz." fis'8 -! cis'8
  -! ] fis,,8 -! [ cis''8 -! a8 -! ]
  | % 103
  g,8 -! [ d'8 -! b'8 -! ] d8
  -! [ b8 -! d,8 -! ] | % 104
  e,4. ^ "arco" a4. | % 105
  d,2. | % 106
  c'4 r8 b4 r8 | % 107
  a4 r8 g4 r8 | % 108
  f4. e4. | % 109
  \numericTimeSignature\time 4/4  a2. :64 a4
  | \barNumberCheck #110
  d4. d8 a'4. a8 | % 111
  b4. cis8 d4. d,8 | % 112
  g8. [ g16 ] g4 e8 [
  e8 e8 e8 ] | % 113
  a,2 a2 | % 114
  d2 a2 | % 115
  b4. ( cis8 ) d4 e8 ( [
  fis8 ) ] | % 116
  g4 g,4 a2 | % 117
  d2 r2 | % 118
  R1*2 | \barNumberCheck #120
  e2 _\f a2 | % 121
  a,2 _\> d2 | % 122
  R1*4 | % 126
  R1*3 | % 129
  b8 -! [ _\! _\p _\pp _\< b8 -! b8 -!
  b8 -! ] b8 -! [ b8 -! b8 -! b8 -! ]
  | \barNumberCheck #130
  b8 -! [ _\! _\mf _\< b8 -! b8 -! b8
  -! ] b8 -! [ b8 -! b8 -! b8 -! ] | % 131
  b8 -! [ _\! b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 132
  b8 -! [ b8 -! b8 -! b8 -! ]
  b8 -! [ b8 -! b8 -! b8 -! ] | % 133
  b8 -! [ _\fp _\< b16 -! b16 ] b8 -!
  [ b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | % 134
  b8 -! [ _\! _\ff b16 -! b16 ] b8 -!
  [ b8 -! ] b8 -! [ b8 -! b8 -!
  b8 -! ] | % 135
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 136
  g8 -! [ g8 -! g8 -! g8 -! ]
  g8 -! [ g8 -! g8 -! g8 -! ] | % 137
  a8 -! [ _\fp _\< a16 -! a16 ] a8 -!
  [ a8 -! ] a8 -! [ a8 -! a8 -!
  a8 -! ] | % 138
  a8 -! [ _\! _\ff a8 -! a8 -! a8 -! ]
  a8 -! [ a8 -! a8 -! a8 -! ] | % 139
  d8 -! r8 a8 -! r4 a8 -! [ d8 -!
  fis8 -! ] | \barNumberCheck #140
  e8 -! r8 a,8 -! r4 a8 -! [ e'8
  -! a8 -! ] | % 141
  fis8 -! r8 d8 -! r4 e8 -! [
  a8 -! cis8 -! ] | % 142
  d8 -! r8 b8 -! r4 fis8 -! [
  a8 -! d8 -! ] | % 143
  b8 -! -> r8 b8 -! r4 d8 -! [
  b8 -! g8 -! ] | % 144
  a8 -! -> r8 a8 -! r4 d8 -! [
  a8 -! fis8 -! ] | % 145
  e8 -! [ _\mf _\< e8 -! e8 -!
  e8 -! ] e8 -! [ e8 -! e8 -!
  e8 -! ] | % 146
  fis8 -! [ _\! _\f _\< fis8 -! fis8 -!
  fis8 -! ] fis8 -! [ fis8 -!
  fis8 -! fis8 -! ] | % 147
  d8 -! [ _\! _\ff d8 -! d8 -!
  d8 -! ] cis8 -! [ cis8 -! cis8 -!
  cis8 -! ] | % 148
  cis8 -! [ _\fp _\< cis16 -! cis16 ]
  cis8 -! [ cis8 -! ] cis8 -! [ cis8 -!
  cis8 -! cis8 -! ] | % 149
  b8 -! _\! _\f r8 fis8 -! r4 fis8 -! [
  b8 -! d8 -! ] | \barNumberCheck #150
  b8 -! r8 fis8 -! r4 fis8 -! [ b8 -!
  d8 -! ] | % 151
  g,8 -! r8 d8 -! r4 d8 -! [ g8 -!
  b8 -! ] | % 152
  fis8 -! r8 cis8 -! r4 cis8 -! [ fis8
  -! a8 -! ] | % 153
  b8 -! r8 fis8 -! r4 fis8 -! [ b8 -!
  d8 -! ] | % 154
  a8 -! r8 e8 -! r4 e8 -! [ a8 -!
  e'8 -! ] | % 155
  fis8 -! _\< r8 a,8 -! r4 a8 -! [
  e'8 -! a8 -! ] | % 156
  b1 :32 | % 157
  b,8 -! [ _\! _\ff b8 -! d8 -! b8 -!
  ] fis8 -! [ fis8 -! b8 -! ] r8 | % 158
  b8 -! r8 b8 -! [ b8 -! ] b8 -! [
  g8 -! e8 -! ] r8 | % 159
  fis16 -! [ fis16 -! fis8 -! ] fis8
  ^^ r8 fis16 -! [ fis16 -! fis8 -! ]
  fis8 ^^ r8 | \barNumberCheck #160
  fis8 -! [ fis8 -! ais8 -! fis8 -! ]
  cis'8 -! r8 fis,8 -! r8 | % 161
  b8 -! [ b8 -! d8 -! b8 -! ]
  fis8 -! [ fis8 -! b8 -! ] r8 | % 162
  b8 -! r8 b8 -! [ b8 -! ] b8 -! [
  g8 -! e8 -! ] r8 | % 163
  a16 -! [ a16 -! a8 -! ] a8 ^^ r8
  a16 -! [ a16 -! a8 -! ] a8 ^^ r8
  | % 164
  cis,8 -! [ cis8 -! e8 -! cis8 -! ]
  a'8 -! r8 e8 -! r8 | % 165
  d4 -> r8 a'8 a8 r8 d,8 r8 | % 166
  d4 r8 a'8 a8 r8 d,8 r8 | % 167
  e4 r8 g8 b8 r8 e,8 r8 | % 168
  e4 r8 g8 b8 r8 e,8 r8 | % 169
  cis4 r8 e8 a8 r8 e8 r8 |
  \barNumberCheck #170
  cis4 _\< r8 e8 a8 r8 e8 r8
  | % 171
  fis8 [ fis8 ] r8 fis8 fis8 r8
  fis8 r8 | % 172
  b8 [ b8 ] r8 b8 b8 r8 b8 r8
  | % 173
  a8 [ _\! _\ff a8 ] r8 a8 a8 r8
  a8 r8 | % 174
  a8 [ a8 a8 a8 ] a8 [
  a8 a8 a8 ] | % 175
  a8 [ a8 a8 a8 ] a8 [
  a8 a8 a8 ] | % 176
  d2. d4 | % 177
  a2. a4 | % 178
  b2. cis4 | % 179
  d2. d4 | \barNumberCheck #180
  g,4. g8 g2 | % 181
  e'4 e4 e4 e4 | % 182
  a,2. a4 | % 183
  d,2. d4 | % 184
  a'2. a4 | % 185
  b2. cis4 | % 186
  d2. d4 | % 187
  g,2 g2 | % 188
  a4. a8 a2 | % 189
  d2 -- -> _\ff a2 -- -> | \barNumberCheck #190
  d2 cis2 | % 191
  d,2 e2 | % 192
  a1 | % 193
  d1 :32 _\< | % 194
  d1 :32 | % 195
  d2 _\! _\ff d2 | % 196
  d2 r2 \bar "|."
}

PartPFiveVoiceOne =  \relative b' {
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  R1*4 | % 5
  b8 -. _\mp r8 fis8 -. r4 fis8 -. [
  b8 -. d8 -. ] | % 6
  b8 -. r8 g8 -. r4 g8 -. [ b8
  -. d8 -. ] | % 7
  e8 -. [ e8 -. b8 b8 -. ]
  d8 [ d8 -. e8 e8 -. ] | % 8
  <g, b e>8 [ _\p _\< <g b e>8 <g b e>8
  <g b e>8 ] <g b e>8 [ <g b e>8
  <g b e>8 <g b e>8 ] | % 9
  <fis ais cis fis>8 [ <fis ais cis fis>8
  <fis ais cis fis>8 <fis ais cis fis>8 ]
  <fis ais cis fis>8 [ <fis ais cis fis>8
  <fis ais cis fis>8 <fis ais cis fis>8 ] |
  \barNumberCheck #10
  <b d fis b>2 _\! _\ff <b d b'>4. <cis
  cis'>8 | % 11
  <d g b d>4 <b b'>4 <g' g'>4.
  <e e'>8 | % 12
  <fis fis'>8 [ _\< <fis fis'>8 <ais
  ais'>8 <fis fis'>8 ] <cis' cis'>8 r8
  <fis, fis'>8 r8 | % 13
  <fis fis'>8 [ _\! <fis fis'>8 <ais
  ais'>8 <fis fis'>8 ] <cis' cis'>8 r8
  <fis, fis'>8 r8 | % 14
  <b, d fis b>2 _\ff <b d b'>4. <cis
  cis'>8 | % 15
  <d g b d>4 <b b'>4 <g' g'>4.
  <fis fis'>8 | % 16
  <e a cis e>2 _\p _\< <a cis e a>8 r8
  <e e'>8 r8 | % 17
  <e a cis e>2 _\! <a cis e a>8 r8 <e
  e'>8 r8 | % 18
  <fis, ais cis fis>8 [ _\< <fis fis'>8
  <ais ais'>8 <fis fis'>8 ] <cis' fis ais cis>8 [
  <fis, fis'>8 <ais ais'>8 <cis cis'>8 ]
  | % 19
  <fis, ais cis fis>8 [ <fis fis'>8 <ais
  ais'>8 <cis cis'>8 ] <fis ais cis fis>8 [
  <e e'>8 <d d'>8 <cis cis'>8 ] |
  \barNumberCheck #20
  <b fis' b>4 ^^ _\! _\ff r4 r2 | % 21
  r4 _\mf \once \omit TupletBracket
  \times 2/3  {
    \acciaccatura { a8*3/2 [ b8*3/2 ] } e8
    [ b8 a8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    d8 [ b8 a8 ]
  }
  b4 | % 22
  r4 \once \omit TupletBracket
  \times 2/3  {
    \acciaccatura { a8*3/2 [ b8*3/2 ] } e8
    [ b8 a8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    d8 [ b8 a8 ]
  }
  b4 | % 23
  r2 \once \omit TupletBracket
  \times 2/3  {
    a,8 [ _\mp b8 d8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ g8 a8 ]
  }
  | % 24
  \once \omit TupletBracket
  \times 2/3  {
    b8 [ d8 a8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    b8 [ g8 a8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ g8 d8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ b8 d8 ]
  }
  | % 25
  r2 \once \omit TupletBracket
  \times 2/3  {
    b8 [ a8 d8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ g8 a8 ]
  }
  | % 26
  \once \omit TupletBracket
  \times 2/3  {
    b8 [ e8 a,8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    b8 [ g8 a8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ g8 d8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ b8 d8 ]
  }
  | % 27
  d''8 [ e8 b8 d8 ]
  a8. [ b32 a32 ] g8 [ e8 ] | % 28
  a2 \once \omit TupletBracket
  \times 2/3  {
    e8 [ g8 d8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ d8 b8 ]
  }
  | % 29
  \once \omit TupletBracket
  \times 2/3  {
    es8 [ g8 es8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    c8 [ es8 c8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    b8 [ a8 g8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    e8 [ d8 b8 ]
  }
  | \barNumberCheck #30
  \once \omit TupletBracket
  \times 2/3  {
    <g'' b>8 [ <g d'>8 <b e>8 ]
  }
  \once \omit TupletBracket
  \times 2/3  {
    <g b>8 [ <d a'>8 <e b'>8 ]
  }
  <b g'>4 \arpeggio \arpeggio r8 a'8 | % 31
  \time 6/8  R2.*2 | % 33
  R2.*4 | % 37
  R2. | % 38
  r4 r8 r16 c,16 [ d16 f16 g16
  a16 ] | % 39
  c4 r8 r4 r8 | \barNumberCheck #40
  r4 r16 \ottava #1 \once \omit TupletBracket
  \times 2/3  {
    d'32 [ c32 a32 ]
  }
  g16 [ a16 f16 g16
  d16 f16 ] | % 41
  c2. \ottava #0 | % 42
  R2. | % 43
  R2. | % 44
  \ottava #1 r4. r8 c,16 ( [ d16 f16 g16
  ) ] | % 45
  gis16 ( [ cis16 a16 cis16
  gis16 cis16 ) ] fis,4 \once \omit TupletBracket
  \times 2/3  {
    gis16 ( [ fis16 e16 ) ]
  }
  | % 46
  fis4 <e a>4 r4 \ottava #0 | % 47
  R2.*2 | % 49
  R2.*3 | % 52
  R2.*3 | % 55
  cis,2. _\mp | % 56
  R2. | % 57
  e2. | % 58
  e4. dis4. | % 59
  <gis, b e>4. \arpeggio \arpeggio \arpeggio _\p r4. |
  \barNumberCheck #60
  \numericTimeSignature\time 4/4  e''4 _\mp b'4
  b4 a8 [ gis8 ] | % 61
  fis8 [ e8 fis8 gis8 ] e4.
  b8 | % 62
  e4. fis8 e2 | % 63
  e8 [ fis8 gis8 a8 ] fis2 | % 64
  <gis, b e>4 ( \arpeggio \arpeggio \arpeggio _\p
  dis'8 [ e8 ~ ] e8 [ <gis, e'>8
  fis'8 gis8 ] | % 65
  <e, a b e>4 \arpeggio \arpeggio \arpeggio \arpeggio
  a4 <dis, a'>4 gis4 ) | % 66
  <cis, e b'>4 ( \arpeggio \arpeggio \arpeggio cis8 [
  e8 ] <b e fis>4 e4 ) | % 67
  <a, cis e gis>8 ( \arpeggio [ \arpeggio \arpeggio \arpeggio
  fis'8 e8 cis8 ) ] <a' cis dis gis>4
  _\< <c dis fis>4 | % 68
  <e gis e'>4. \arpeggio \arpeggio \arpeggio _\! _\mf
  gis8 <dis fis dis'>4 gis'4 | % 69
  <cis,, e cis'>4 dis'8 [ e8 ]
  <b, e b'>2 | \barNumberCheck #70
  <cis e cis'>4 b'8 [ a8 ] <b,
  e b'>4 e'8 [ e,,16 ( fis16 ] | % 71
  <ais, cis e gis>4 \arpeggio -- \arpeggio \arpeggio \arpeggio
  <cis e fis>4 -- <a b cis e>4 -- <b dis>4 )
  -- | % 72
  <e gis b e>4 \arpeggio \arpeggio \arpeggio \arpeggio
  <e' gis e'>4 <dis fis dis'>4 <b dis
  b'>4 _\mf | % 73
  <cis e cis'>4 <b b'>8 [ <a a'>8 ]
  <b e b'>4. \arpeggio \arpeggio \arpeggio _\< b,8 (
  | % 74
  <gis cis e>8 [ fis'8 gis8 a8 ]
  <a, cis fis>4. _\! _\mf e'8 | % 75
  <a, b e>2 ~ ~ _\> <gis b e>4 ) ^\fermata r4 | % 76
  R1 | % 77
  R1*4 | % 81
  R1 | % 82
  a''16 [ _\! _\pp b,16 d16 a'16
  ( ] a16 ) [ b,16 d16 a'16 ~
  ] a16 [ b,16 d16 a'16 ( ]
  a16 ) [ b,16 d16 a'16 ] | % 83
  d16 [ fis,16 cis'16 d16 ( ]
  d16 ) [ fis,16 cis'16 d16 (
  ] d16 ) [ fis,16 cis'16 d16
  ( ] d16 ) [ fis,16 cis'16 d16
  ] | % 84
  d16 [ g,16 b16 d16 ( ]
  d16 ) [ g,16 b16 d16 ]
  e16 [ a,16 d16 e16 ~ ]
  e16 [ a,16 d16 e16 ] | % 85
  fis16 [ b,16 d16 fis16 ( ]
  fis16 ) [ b,16 d16 fis16 ~ ]
  fis16 [ b,16 d16 fis16 ( ]
  fis16 ) [ d16 b16 fis16 ]
  | % 86
  d'16 [ g,16 b16 d16 ( ]
  d16 ) [ g,16 cis16 d16 ]
  e16 [ a,16 d16 e16 ~ ]
  e16 [ a,16 d16 e16 ] | % 87
  fis16 [ a,16 d16 fis16 ( ]
  fis16 ) [ a,16 d16 fis16 ~ ]
  fis16 [ a,16 d16 fis16 ( ]
  a16 ) [ fis16 d16 a16 ]
  | % 88
  <d, g b>2 <d g a>2 | % 89
  <cis fis a>2 <d fis b>2 | \barNumberCheck #90
  <d, fis a>2 <cis fis a>2 | % 91
  d''16 [ fis,16 b16 d16 ( ]
  d16 ) [ fis,16 b16 cis16 ]
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  <d, fis b d>4 \arpeggio \arpeggio \arpeggio \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal \arpeggioNormal r4 | % 92
  \time 6/8  b'16 [ d,16 fis16
  b16 ( b16 ) d,16 ] fis16 [ b16
  ~ b16 d,16 fis16 b16 ] | % 93
  b16 [ d,16 fis16 b16 (
  b16 ) d,16 ] fis16 [ b16 ~
  b16 d,16 fis16 b16 ]
  | % 94
  R2. | % 95
  r4. <b, fis'>8 -. [ <fis d'>8 -. <fis
  b>8 -. ] | % 96
  r8 <b, d>8 [ <e g>8 ] a,8 [ <e' g>8
  <a cis>8 ] | % 97
  r8 e16 [ d16 e16 fis16 ]
  <fis a>8 [ <e a>8 <c fis>8 ] | % 98
  r8 <b d>8 [ <g' b>8 ] r8 <cis, e>8 [
  <fis a>8 ] | % 99
  r8 <b, d>8 [ <d g>8 ] r8 r8 <cis fis>8 |
  \barNumberCheck #100
  r8 r8 <c e>8 <e g>4 <c e>8 | % 101
  <cis fis>4. <ais fis'>4. | % 102
  b16 [ fis'16 b16 fis16 b16
  fis'16 ] <d fis b>8 [ <b d fis>8
  <d, fis b>8 ] | % 103
  b16 [ fis'16 b16 fis16 b16
  fis'16 ] <g b>16 [ g16 d16
  g16 b8 ] | % 104
  r8 r8 <g, b>8 r8 <e g>8 [ <g cis>8 ] | % 105
  a'16 [ fis16 d16 fis16
  d16 cis16 ] a16 [ fis16
  d16 e16 fis8 ] | % 106
  r8 <e g>8 -. [ <e g>8 -. ] \once \omit TupletBracket
  \times 2/3  {
    fis16 [ g16 b16
  }
  \once \omit TupletBracket
  \times 2/3  {
    d16 fis16 g16
  }
  <g b>8 ] | % 107
  r8 <e, g>8 -. [ <e g>8 -. ] \once \omit
  TupletBracket
  \times 2/3  {
    fis16 [ g16 b16
  }
  \once \omit TupletBracket
  \times 2/3  {
    d16 fis16 g16
  }
  <g b>8 ] | % 108
  <e e'>8 [ _\< <d d'>8 <a a'>8 ]
  <e e'>4 <d g d'>8 | % 109
  \numericTimeSignature\time 4/4  <e a cis e>4 _\! _\ff
  <b b'>8 [ <cis cis'>8 ] \once \omit TupletBracket
  \times 2/3  {
    <d d'>8 [ <e e'>8 <fis fis'>8 ]
  }
  <g g'>16 [ <a a'>16 <b b'>16
  <cis cis'>16 ] | \barNumberCheck #110
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  <d fis a d>4. \arpeggio \arpeggio \arpeggio \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal \arpeggioNormal
  <a a'>8 \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  \arpeggioArrowUp <e' a cis e>4. \arpeggio \arpeggio
  \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal \arpeggioNormal
  \arpeggioNormal <a, a'>8 | % 111
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  <fis' b d fis>4. \arpeggio \arpeggio \arpeggio \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal \arpeggioNormal
  <e e'>8 \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  \arpeggioArrowUp <d fis a d>4. \arpeggio \arpeggio
  \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal \arpeggioNormal
  \arpeggioNormal <a a'>8 | % 112
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  <b d g b>8. \arpeggio [ \arpeggio \arpeggio \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal \arpeggioNormal
  <b b'>16 ] \arpeggioArrowUp \arpeggioArrowUp
  \arpeggioArrowUp \arpeggioArrowUp <b d g b>4 \arpeggio
  \arpeggio \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal
  \arpeggioNormal \arpeggioNormal \arpeggioArrowUp \arpeggioArrowUp
  \arpeggioArrowUp \arpeggioArrowUp <b e gis b>8 \arpeggio [
  \arpeggio \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal
  \arpeggioNormal \arpeggioNormal <b b'>8 <cis
  cis'>8 <d d'>8 ] | % 113
  <e a cis e>8 \arpeggio [ \arpeggio \arpeggio \arpeggio
  <fis fis'>8 <e e'>8 <d d'>8 ]
  <e a cis e>2 \arpeggio \arpeggio \arpeggio \arpeggio | % 114
  a,8. _\p a16 [ d16 fis16
  a16 d16 ] cis16 [ e,16
  a16 e'16 ] a8 [ a,8 ] | % 115
  d8 fis,4 cis'16 [ d16 ]
  cis8 [ a8 fis8 d8 ]
  | % 116
  a4. cis16 [ d16 ] e2 | % 117
  <fis, a d>2 \arpeggio \arpeggio \arpeggio r2 | % 118
  \ottava #1 d''4 _\mp a'4 a4 g8 [
  fis8 ] | % 119
  e8 [ d8 e8 fis8 ] d2
  \arpeggio \ottava #0 | \barNumberCheck #120
  R1*6 | % 126
  R1*3 | % 129
  <b,, d fis>8 [ _\pp _\< <b d fis>8 <b d fis>8
  <b d fis>8 ] <b d fis>8 [ <b d fis>8
  <b d fis>8 <b d fis>8 ] | \barNumberCheck #130
  <b d fis>8 [ _\! _\mf _\< <b d fis>8 <b d
  fis>8 <b d fis>8 ] <b d fis>8 [ <b d
  fis>8 <b d fis>8 <b d fis>8 ] | % 131
  <b d fis b>8 [ _\! _\ff <b b'>8 <b b'>8
  <b b'>8 ] <d fis b d>8 [ <d d'>8 <d
  d'>8 <d d'>8 ] | % 132
  <b d fis b>8 [ <b b'>8 <d d'>8 <d
  d'>8 ] <b b'>8 [ <b b'>8 <a a'>8
  <a a'>8 ] | % 133
  b''8 -. [ _\fp _\< b16 -. a16 ]
  b8 -. [ d8 -. ] fis,4 -. fis8
  -. [ a8 -. ] | % 134
  b8 -. [ _\! _\ff b8 -. fis8 -.
  b8 -. ] d8 -. [ b8 -. fis8
  -. a8 -. ] | % 135
  <b,, d g b>8 [ <b b'>8 <b b'>8 <b
  b'>8 ] <d g b d>8 [ <d d'>8 <d d'>8
  <d d'>8 ] | % 136
  <b d g b>8 [ <b b'>8 <d d'>8 <d d'>8
  ] <a a'>8 [ <a a'>8 <b b'>8 <b b'>8
  ] | % 137
  e'8 -. [ _\fp _\< e16 -. fis16 ]
  e8 -. [ d8 -. ] e4 -. a8 -.
  [ fis8 -. ] | % 138
  e8 -. [ _\! _\ff e8 -. a,8 -.
  e'8 -. ] a8 -. [ e8 -. d8 -.
  e8 -. ] | % 139
  <fis, a d fis>8 [ <fis fis'>8 <fis
  fis'>8 <fis fis'>8 ] <d fis a d>8 [ <d
  d'>8 <d d'>8 <d d'>8 ] | \barNumberCheck #140
  <e a cis e>8 [ <e e'>8 <e e'>8 <e
  e'>8 ] <a cis e a>8 [ <a a'>8 <a
  a'>8 <a a'>8 ] | % 141
  <fis b d fis>8 [ <fis fis'>8 <fis
  fis'>8 <fis fis'>8 ] <e a cis e>8 [ <e
  e'>8 <e e'>8 <e e'>8 ] | % 142
  <fis b d fis>8 [ <fis fis'>8 <fis
  fis'>8 <fis fis'>8 ] <d fis a d>8 [ <d
  d'>8 <d d'>8 <d d'>8 ] | % 143
  <e g b e>4 -> -. r4 e8 [ fis16 e16 ]
  d8 [ e8 ] | % 144
  <d fis a d>4 -> -. r4 d8 [ e16 d16 ]
  b8 [ d8 ] | % 145
  <e g b e>4 _\mf _\< <e g>16 [ b'16
  <e, g>16 b'16 ] <e, g>16 [ b'16 <e,
  g>16 b'16 ] <e, g>16 [ b'16 <e,
  g>16 b'16 ] | % 146
  fis16 [ _\! _\f _\< b16 fis16 b16 ]
  fis16 [ b16 fis16 b16 ] fis16
  [ cis'16 fis,16 cis'16 ] fis,16 [
  cis'16 fis,16 cis'16 ] | % 147
  <g b>16 [ _\! _\ff d'16 <g, b>16
  d'16 ] <g, b>16 [ d'16 <g,
  b>16 d'16 ] <a cis>16 [ e'16
  <a, cis>16 e'16 ] <a, cis>16 [
  e'16 <a, cis>16 e'16 ] | % 148
  <a, cis e a>8 [ _\fp _\< <a e' a>8 <a
  e' a>8 <a e' a>8 ] <a e' a>8 [ <a
  e' a>8 <a e' a>8 <a e' a>8 ] | % 149
  <b d fis b>8 [ _\! _\f <b b'>8 <d d'>8
  <d d'>8 ] <b b'>8 [ <b b'>8
  <a a'>8 <a a'>8 ] | \barNumberCheck #150
  <b b'>8 -. [ _\fp _\< <b b'>8 -. <fis
  fis'>8 -. <b b'>8 -. ] <d d'>8 -. [
  <b b'>8 -. <fis fis'>8 -. <a a'>8 -. ]
  | % 151
  <d, g b d>8 [ _\! _\f <d d'>8 <e e'>8
  <e e'>8 ] <d d'>8 [ <d d'>8 <b b'>8
  <b b'>8 ] | % 152
  <a' a'>8 -. [ _\fp _\< <a a'>8 -. <fis
  fis'>8 -. <a a'>8 -. ] <cis cis'>8 -. [
  <a a'>8 -. <fis fis'>8 -. <a a'>8 -. ]
  | % 153
  <b d fis b>8 [ _\! _\ff <b b'>8 <d d'>8
  <d d'>8 ] <a a'>8 [ <a a'>8
  <b b'>8 <b b'>8 ] | % 154
  <e e'>8 -. [ _\fp _\< <e e'>8 -. <b
  b'>8 -. <e e'>8 -. ] <a a'>8 -. [
  <e e'>8 -. <d d'>8 -. <e e'>8 -. ] | % 155
  <fis a d fis>8 -. [ _\! _\f _\< <fis fis'>8 -.
  <a a'>8 -. <a a'>8 -. ] <e a cis e>8
  -. [ <e e'>8 -. <fis fis'>8 -. <fis
  fis'>8 -. ] | % 156
  <b, b'>8 [ <b b'>8 <d d'>8
  <b b'>8 ] <fis' fis'>8 r8 <b, b'>8 r8 | % 157
  <b d fis b>2 _\! _\ff <b d b'>4. <cis
  cis'>8 | % 158
  <d g b d>4 <b b'>4 <g' g'>4.
  <e e'>8 | % 159
  <fis fis'>8 [ _\< <fis fis'>8 <ais
  ais'>8 <fis fis'>8 ] <cis' cis'>8 r8
  <fis, fis'>8 r8 | \barNumberCheck #160
  <fis fis'>8 [ _\! <fis fis'>8 <ais
  ais'>8 <fis fis'>8 ] <cis' cis'>8 r8
  <fis, fis'>8 r8 | % 161
  <b, d fis b>2 _\ff <b d b'>4. <cis
  cis'>8 | % 162
  <d g b d>4 <b b'>4 <g' g'>4.
  <fis fis'>8 | % 163
  <e a cis e>2 _\p _\< <a cis e a>8 r8
  <e e'>8 r8 | % 164
  <e a cis e>8 [ _\! _\ff <e, e'>8 <a
  a'>8 <cis cis'>8 ] <a' cis e a>8 r8
  <a, a'>8 r8 | % 165
  <d fis a d>4 -> <fis a d fis>4 <e e'>8
  [ <fis fis'>8 ] <d fis a d>4 | % 166
  <d fis a d>4 <fis a d fis>4 <e e'>8 [
  <fis fis'>8 ] <d fis a d>4 | % 167
  <b e g b>4 <e e'>4 <d d'>4
  <cis cis'>4 | % 168
  <b e g b>4 <e e'>4 <d d'>4
  <cis cis'>4 | % 169
  <e, a cis e>4 <g g'>4 <fis fis'>4
  <e e'>4 | \barNumberCheck #170
  <e a cis e>4 _\< <g g'>4 <fis fis'>4
  <e e'>4 | % 171
  <fis ais cis fis>4 <ais ais'>4 <cis
  cis'>4 <e, e'>4 | % 172
  <d fis b d>4 <fis fis'>4 <d' d'>4
  <d d'>4 | % 173
  <a a'>4 _\! _\ff <b b'>4 <a a'>4
  <b b'>4 | % 174
  <a a'>4 <b b'>4 <a a'>4 <b
  b'>4 | % 175
  <a cis e a>4 <a a'>4 <d d'>4
  <e e'>4 | % 176
  <fis a d fis>4 <a, d a'>4 <d a' d>4
  <a' d a'>4 | % 177
  <e, a cis e>4 <a e' a>4 <cis e cis'>4
  <e a e'>4 | % 178
  <fis b d fis>4 <fis, b fis'>4 <d' fis
  b>4 <e g cis e>4 | % 179
  <d, a' d>4 <a' d a'>4 <d a' d>4
  <a' d a'>4 | \barNumberCheck #180
  <g, d' g>4 <d' g d'>4 <g d' g>4
  <d' g d'>4 | % 181
  <e,, b' e>4 <b' e b'>4 <e b' e>4
  <b' e b'>4 | % 182
  <a cis e g>4 <fis a cis fis>4 <e a cis
  e>4 <a, cis e a>4 | % 183
  <d, fis a d>4 <a' d a'>4 <d a' d>4
  <a' d a'>4 | % 184
  <e, a cis e>4 <a e' a>4 <cis e cis'>4
  <e a e'>4 | % 185
  <fis b d fis>4 <fis, b fis'>4 <d' fis
  b>4 <e g cis e>4 | % 186
  <d, a' d>4 <a' d a'>4 <d a' d>4
  <a' d a'>4 | % 187
  <g, d' g>4 <d' g d'>4 <g d' g>4
  <d' g d'>4 | % 188
  <a, e' a>4 <a e' a>4 <d a' d>4
  <cis e a cis>4 | % 189
  <fis a d fis>2 -- -> _\ff <e a cis e>2 -- -> |
  \barNumberCheck #190
  <b, fis' b>4 <d fis d'>4 <d a' d>4
  <cis a' cis>4 | % 191
  \times 2/3  {
    <b g' b>4 <cis g' cis>4 <d g d'>4
  }
  <g bes d g>4 <d d'>4 | % 192
  <a' e' a>4 <a e' a>4 <d a' d>4
  <cis e a cis>4 | % 193
  <fis a d fis>2 _\ff r2 | % 194
  R1*3 \bar "|."
}

PartPFiveVoiceFive =  \relative b, {
  \clef "bass" \numericTimeSignature\time 4/4 \key c \major | % 1
  R1*4 | % 5
  R1 | % 6
  b8 -. [ b8 -. g8 -. b8 -. ]
  e8 -. [ b8 -. d8 -. e8 -. ] | % 7
  b8 -. [ b8 -. g8 -. b8 -. ]
  e8 -. [ b8 -. d8 -. e8 -. ] | % 8
  <e, b' e>8 [ _\p _\< <e b' e>8 <e b' e>8
  <e b' e>8 ] <e b' e>8 [ <e b' e>8 <e
  b' e>8 <e b' e>8 ] | % 9
  <fis cis' fis>8 [ <fis cis' fis>8 <fis cis'
  fis>8 <fis cis' fis>8 ] <fis cis' fis>8 [
  <fis cis' fis>8 <fis cis' fis>8 <fis cis'
  fis>8 ] | \barNumberCheck #10
  <b, b'>8 [ _\! _\ff <b b'>8 <d d'>8
  <b b'>8 ] <fis' fis'>8 r8 <b, b'>8 r8 | % 11
  <b b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <g' g'>8 r8 <e e'>8 r8 | % 12
  <fis fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <cis' cis'>8 r8 <fis, fis'>8
  r8 | % 13
  <fis fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <cis' cis'>8 r8 <fis, fis'>8
  r8 | % 14
  <b, b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <fis' fis'>8 r8 <b, b'>8 r8 | % 15
  <b b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <g' g'>8 r8 <e e'>8 r8 | % 16
  <cis cis'>8 [ <cis cis'>8 <e e'>8
  <cis cis'>8 ] <a' a'>8 r8 <e e'>8 r8 | % 17
  <cis cis'>8 [ <cis cis'>8 <e e'>8
  <cis cis'>8 ] <a' a'>8 r8 <e e'>8 r8 | % 18
  <fis fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <cis' cis'>8 [ <fis, fis'>8
  <ais ais'>8 <cis cis'>8 ] | % 19
  <fis, fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <fis fis'>8 [ <fis fis'>8
  <fis, fis'>8 <fis fis'>8 ] | \barNumberCheck #20
  <b' fis' b>4 ^^ _\ff r4 r2 | % 21
  g4 _\mp <g' d'>4 r2 | % 22
  g,4 <g' d'>4 r2 | % 23
  g,8 [ d'8 g8 <g b>8 ] r2
  | % 24
  g,8 [ d'8 <g b>8 ] r8 r2 | % 25
  e8 [ b'8 <g b d>8 ] r8 r2 | % 26
  e8 [ g8 <g b>8 ] r8 r2 | % 27
  c,8 [ g'8 <c e>8 ] r8 r4. g8
  | % 28
  c,8 [ g'8 <c e>8 ] r8 r4. g8
  | % 29
  c,8 [ g'8 <c es>8 ] r8 r4. r8
  | \barNumberCheck #30
  g,8 [ d'8 g8 a8 ]
  <g b d>4 \arpeggio \arpeggio \arpeggio r8 a,8 | % 31
  \time 6/8  <d, d'>4. -. <fis' a>4 -. a,8
  -. | % 32
  <d, d'>4. -. <fis' a>4 -. a,8 -. | % 33
  <fis fis'>4. -. <fis' a>4 -. a,8 -. | % 34
  <fis fis'>4. -. <fis' a>8 [ fis16 d16
  a16 fis16 ] | % 35
  <g g'>4. <g' b>4 d8 | % 36
  <g, g'>4. <d' g>4 g,8 | % 37
  <c, c'>4. <g'' bes>4 g,8 | % 38
  <c, c'>4. <g'' bes>4 c,8 | % 39
  f16 [ c'16 ] d4 f,16 [
  c'16 ] d4 | \barNumberCheck #40
  f,16 [ c'16 ] d4 f,16 [
  c'16 ] d4 | % 41
  d,16 [ c'16 ] d4 d,16 [
  c'16 ] d4 | % 42
  d,16 [ c'16 ] d4 d,16 [
  c'16 ] d4 | % 43
  bes,16 [ d16 g16 c16 ~
  c8 ] bes,16 [ d16 g16
  c16 ~ c8 ] | % 44
  bes,16 [ d16 g16 c16 ~
  c8 ] bes,16 [ d16 g16
  c16 ~ c8 ] | % 45
  b,16 [ cis16 gis'16 cis16 ~
  cis8 ] b,16 [ cis16 gis'16
  cis16 ~ cis8 ] | % 46
  b,16 [ cis16 gis'16 a16 ~
  a8 ] b,16 [ cis16 ] gis'4 | % 47
  a,16 [ _\mp e'16 gis16 a16
  gis16 cis16 ] b16 [ a16
  cis16 a16 gis16 a16 ] | % 48
  e16 [ gis16 a16 e'16
  cis16 a16 ] b16 [ a16
  cis16 a16 gis16 a16 ]
  | % 49
  a,16 [ fis'16 b16 e16
  b16 dis16 ] cis'16 [ dis,16
  fis16 dis16 b16 a16 ] |
  \barNumberCheck #50
  a,16 [ fis'16 a16 dis16
  b16 dis16 ] b'16 [ dis,16
  fis16 dis16 b16 gis16 ] | % 51
  gis,16 [ fis'16 b16 e16
  dis16 e16 ] b'16 [ e,16
  dis16 e16 dis16 b16 ]
  | % 52
  gis,16 [ fis'16 b16 e16
  dis16 e16 ] b'16 [ e,16
  dis16 e16 dis16 b16 ] | % 53
  cis,16 [ gis'16 b16 eis16
  d16 eis16 ] b'16 [ gis16
  eis16 gis16 eis16 d16 ] | % 54
  cis,16 [ gis'16 b16 eis16
  d16 eis16 ] b'16 [ gis16
  eis16 gis16 eis16 d16 ]
  | % 55
  <cis, fis>8 -! r16 a'8 -! [ a16 -! ]
  <fis a>8 -! r8 r8 | % 56
  fis8 -! r16 a8 -! [ a16 -! ] a8 -! r8
  r8 | % 57
  c,8 -! r16 a'8 -! [ a16 -! ] a8 -! r8
  r8 | % 58
  b8 -! r16 b8 -! [ b16 -! ] b8 -! r8
  b,8 -! | % 59
  e,16 -. [ b'16 -. e16 -. gis16 -. ]
  <e gis b>4. \arpeggio \arpeggio \arpeggio r8 |
  \barNumberCheck #60
  \numericTimeSignature\time 4/4  <gis e'>2 _\mp
  \sustainOff\sustainOn <a e'>4 ~ ~ <a e'>4 | % 61
  <b fis'>2 \sustainOff \sustainOff\sustainOn <cis
  gis'>2 | % 62
  <a e'>4 ~ ~ \sustainOff \sustainOff\sustainOn <a
  e'>4 <gis e'>2 | % 63
  <fis e'>2 \sustainOff \sustainOff\sustainOn <b
  fis'>4 ~ ~ <b fis'>4 | % 64
  e,8 ( [ \sustainOff _\p \sustainOff\sustainOn b'8
  gis'8 b,8 ) ] dis,8 ( [ b'8
  fis'8 b,8 ) ] | % 65
  cis,8 ( [ \sustainOff \sustainOff\sustainOn a'8
  e'8 a,8 ) ] b,8 ( [ gis'8
  b8 gis8 ) ] | % 66
  a,8 ( [ \sustainOff \sustainOff\sustainOn e'8 ]
  b'4 ) gis,8 ( [ e'8 ] b'4 )
  | % 67
  fis,8 ( [ \sustainOff \sustainOff\sustainOn e'8 ]
  a4 ) <dis, cis'>4 _\< <bis gis' dis'>4
  | % 68
  cis8 ( [ \sustainOff _\! _\mf \sustainOff\sustainOn
  gis'8 e'8 cis8 ) ] b,8 ( [
  gis'8 dis'8 b8 ) ] | % 69
  a,8 ( [ \sustainOff \sustainOff\sustainOn e'8
  cis'8 a8 ) ] gis,8 ( [ e'8
  b'8 gis8 ) ] | \barNumberCheck #70
  a,8 ( [ \sustainOff \sustainOff\sustainOn e'8 ]
  cis'4 ) gis,8 ( [ e'8 ] b'4 ) | % 71
  ais,8 ( [ \sustainOff \sustainOff\sustainOn fis'8
  a8 fis8 ) ] b,8 ( [ fis'8 ]
  a4 ) | % 72
  <cis,, cis'>8 -- [ \sustainOff \sustainOff\sustainOn
  e'8 ( <gis b dis>8 e'8 ) ]
  <dis,, dis'>8 -- [ fis'8 ( <b dis>8
  fis'8 ) ] | % 73
  <e,, e'>8 -- [ \sustainOff \sustainOff\sustainOn
  a'8 ( b8 e8 ) ] <e, b' gis'>2 | % 74
  <a,, a'>8 ( [ \sustainOff \sustainOff\sustainOn e''8
  ] a4 ) <b,, b'>8 ( [ fis''8 ] a4
  ) | % 75
  <e, e'>2 \sustainOff e,4 ^\fermata r4 | % 76
  R1 | % 77
  b''8 [ _\mp fis'8 d'8 e8 ]
  <fis a>2 | % 78
  R1 | % 79
  d,8 [ a'8 d8 e8 ]
  fis2 | \barNumberCheck #80
  g,,8 [ d'8 <g b>8 <a cis>8 ]
  a,8 [ e'8 ] a4 | % 81
  b,8 [ fis'8 cis'8 fis,8 ]
  d'2 | % 82
  g,8 g4. a8 a4. | % 83
  b,1 | % 84
  g8 d'4. a8 e'4. | % 85
  b8 [ fis'8 b8 fis8 ]
  d8 [ cis8 ] b4 | % 86
  g8 d'4. a8 e'4. | % 87
  d8 [ a'8 d8 a8 ]
  fis8 [ d8 ] fis,4 | % 88
  g8 [ d'8 ] g4 a,8 [
  e'8 ] a4 | % 89
  fis,8 [ cis'8 ] fis4 b,8 [
  fis'8 b8 fis8 ] | \barNumberCheck #90
  e,8 [ b'8 ] e4 fis,8 [
  cis'8 ] fis4 | % 91
  b,8 [ <d fis>8 <d fis>8 ] r8
  \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp
  <b d fis b>4 \arpeggio \arpeggio \arpeggio \arpeggio
  \arpeggioNormal \arpeggioNormal \arpeggioNormal \arpeggioNormal r4 | % 92
  \time 6/8  b8 [ _\p <d fis>8 -. <d
  fis>8 -. ] r8 <d fis>8 -. [ <d fis>8 -. ] | % 93
  b8 [ <d fis>8 -. <d fis>8 -. ] r8
  <d fis>8 -. [ <d fis>8 -. ] | % 94
  r8 <d fis>8 -. [ <d fis>8 -. ] r8 <e
  a>8 -. [ <e a>8 -. ] | % 95
  r8 <fis b>8 -. [ <b fis'>8 -. ] r4 r8 | % 96
  R2. | % 97
  d,16 [ a'16 ] r8 r8 r4. | % 98
  g8 r8 r8 fis8 r8 r8 | % 99
  e8 r8 r8 d8 [ <fis a>8 ] r8 |
  \barNumberCheck #100
  <cis a'>8 [ <cis g'>8 ] r8 r8 r8 r8 | % 101
  R2. | % 102
  <b fis'>4 r8 <fis b fis'>4 r8 | % 103
  <g d'>4 r8 <d g d'>4 r8 | % 104
  g'8 [ <g b>8 ] r8 fis8 r8 r8 | % 105
  <d a'>4 r8 <a d a'>4 r8 | % 106
  r8 e'8 [ e'8 ] r8 r4 | % 107
  r8 a,8 [ a'8 ] r8 r4 | % 108
  <f,, c'>2 _\< <e b' e>4 | % 109
  \numericTimeSignature\time 4/4  <a e' a>4 _\! _\ff
  <b b'>8 [ <cis cis'>8 ] \once \omit
  TupletBracket
  \times 2/3  {
    <d d'>8 [ <e e'>8 <fis fis'>8 ]
  }
  <g g'>16 [ <a a'>16 <b b'>16
  <cis cis'>16 ] | \barNumberCheck #110
  d,8 [ a'8 fis'8 a,8 ]
  a,8 [ e'8 cis'8 e,8 ] | % 111
  b8 [ fis'8 d'8 fis,8 ]
  fis,8 [ d'8 a'8 fis8 ] | % 112
  g,8 [ d'8 b'8 d,8 ]
  e,8 [ b'8 gis'8 b,8 ] | % 113
  a8 [ e'8 a8 e8 ]
  <a e' g>2 \arpeggio \arpeggio \arpeggio | % 114
  d,8 [ _\p a'8 d8 a8 ]
  cis,8 [ a'8 e'8 a,8 ] | % 115
  b,8 [ a'8 a'8 d,8 ]
  a8 [ d8 a'8 d,8 ]
  | % 116
  g,8 [ d'8 ] g4 a,8 [
  e'8 ] g4 | % 117
  d,8 [ a'8 d8 g8 ]
  <d, a' e'>2 \arpeggio \arpeggio \arpeggio | % 118
  \ottava #1 <fis' d'>2 \arpeggio \arpeggio _\mp
  \sustainOff\sustainOn <g d'>4 ~ ~ <g d'>4 | % 119
  <a e'>2 \arpeggio \arpeggio \sustainOff
  \sustainOff\sustainOn <b fis'>2 \arpeggio \arpeggio
  \ottava #0 | \barNumberCheck #120
  R1*6 | % 126
  R1*3 | % 129
  <b,, d fis>8 [ \sustainOff _\pp _\< <b d fis>8
  <b d fis>8 <b d fis>8 ] <b d fis>8 [
  <b d fis>8 <b d fis>8 <b d fis>8 ]
  | \barNumberCheck #130
  <b d fis>8 [ _\! _\mf _\< <b d fis>8
  <b d fis>8 <b d fis>8 ] <b d fis>8 [
  <b d fis>8 <b d fis>8 <b d fis>8 ] | % 131
  <b d fis>8 [ _\! _\ff <b d fis>8 <b d
  fis>8 <b d fis>8 ] <b d fis>8 [ <b
  d fis>8 <b d fis>8 <b d fis>8 ] | % 132
  <b d fis>8 [ <b d fis>8 <b d fis>8
  <b d fis>8 ] <b d fis>8 [ <b d fis>8
  <b d fis>8 <b d fis>8 ] | % 133
  <b fis' b>8 [ _\fp _\< <b fis' b>8 <b
  fis' b>8 <b fis' b>8 ] <b fis' b>8 [
  <b fis' b>8 <b fis' b>8 <b fis' b>8 ]
  | % 134
  <b fis' b>8 [ _\! _\fp _\< <b fis' b>8
  <b fis' b>8 <b fis' b>8 ] <b fis' b>8 [
  <b fis' b>8 <b fis' b>8 <b fis' b>8 ]
  | % 135
  <g d' g>8 [ _\! <g d' g>8 <g d' g>8
  <g d' g>8 ] <g d' g>8 [ <g d' g>8 <g d' g>8
  <g d' g>8 ] | % 136
  <g d' g>8 [ <g d' g>8 <g d' g>8 <g
  d' g>8 ] <g d' g>8 [ <g d' g>8 <g d' g>8
  <g d' g>8 ] | % 137
  <a e' a>8 [ _\fp _\< <a e' a>8 <a e'
  a>8 <a e' a>8 ] <a e' a>8 [ <a e'
  a>8 <a e' a>8 <a e' a>8 ] | % 138
  <a e' a>8 [ _\! _\ff <a e' a>8 <a e'
  a>8 <a e' a>8 ] <a e' a>8 [ <a e'
  a>8 <a e' a>8 <a e' a>8 ] | % 139
  <d, a' d>8 [ <d a' d>8 <d a' d>8 <d
  a' d>8 ] <d a' d>8 [ <d a' d>8 <d a' d>8
  <d a' d>8 ] | \barNumberCheck #140
  <cis a' cis>8 [ <cis a' cis>8 <cis a' cis>8
  <cis a' cis>8 ] <cis a' cis>8 [ <cis a' cis>8
  <cis a' cis>8 <cis a' cis>8 ] | % 141
  <b d fis b>8 [ <b b'>8 <b b'>8 <b
  b'>8 ] <cis e a cis>8 [ <cis cis'>8 <cis
  cis'>8 <cis cis'>8 ] | % 142
  <g b d g>8 [ <g g'>8 <g g'>8 <g g'>8
  ] <d' fis a d>8 [ <d d'>8 <d d'>8 <d
  d'>8 ] | % 143
  <e g b e>4 -> -. r2 <e g b e>4 | % 144
  <d a' d>4 -> -. r2 <d a' d>4 | % 145
  <e b' e>4 _\mf _\< r2 r4 | % 146
  <fis b fis'>4 _\! _\f _\< r4 <fis cis' fis>4 r4 | % 147
  <g d' g>4 _\! _\ff r4 <a cis e a>4 r4 | % 148
  <a e' a>8 [ _\fp _\< <a e' a>8 <a e'
  a>8 <a e' a>8 ] <a e' a>8 [ <a e'
  a>8 <a e' a>8 <a e' a>8 ] | % 149
  <b d fis>8 [ _\! _\f <b d fis>8 <b d
  fis>8 <b d fis>8 ] <b d fis>8 [ <b
  d fis>8 <b d fis>8 <b d fis>8 ] |
  \barNumberCheck #150
  <b fis' b>8 [ _\fp _\< <b fis' b>8 <b
  fis' b>8 <b fis' b>8 ] <b fis' b>8 [
  <b fis' b>8 <b fis' b>8 <b fis' b>8 ]
  | % 151
  <g d' g>8 [ _\! _\f <g d' g>8 <g d' g>8
  <g d' g>8 ] <g d' g>8 [ <g d' g>8 <g
  d' g>8 <g d' g>8 ] | % 152
  <fis cis' fis>8 [ _\fp _\< <fis cis' fis>8
  <fis cis' fis>8 <fis cis' fis>8 ] <fis cis' fis>8 [
  <fis cis' fis>8 <fis cis' fis>8 <fis cis'
  fis>8 ] | % 153
  <b d fis>8 [ _\! _\ff <b d fis>8 <b d
  fis>8 <b d fis>8 ] <b d fis>8 [ <b
  d fis>8 <b d fis>8 <b d fis>8 ] | % 154
  <a e' a>8 [ _\fp _\< <a e' a>8 <a e'
  a>8 <a e' a>8 ] <a e' a>8 [ <a e'
  a>8 <a e' a>8 <a e' a>8 ] | % 155
  <d, a' d>8 [ _\! _\f _\< <d a' d>8 <d a' d>8
  <d a' d>8 ] <a' e' a>8 [ <a e' a>8
  <a e' a>8 <a e' a>8 ] | % 156
  <b, b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <fis' fis'>8 r8 <b, b'>8 r8 | % 157
  <b b'>8 [ _\! _\ff _\ff <b b'>8 <d d'>8
  <b b'>8 ] <fis' fis'>8 r8 <b, b'>8 r8
  | % 158
  <b b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <g' g'>8 r8 <e e'>8 r8 | % 159
  <fis fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <cis' cis'>8 r8 <fis, fis'>8
  r8 | \barNumberCheck #160
  <fis fis'>8 [ <fis fis'>8 <ais ais'>8
  <fis fis'>8 ] <cis' cis'>8 r8 <fis, fis'>8
  r8 | % 161
  <b, b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <fis' fis'>8 r8 <b, b'>8 r8 | % 162
  <b b'>8 [ <b b'>8 <d d'>8 <b b'>8 ]
  <g' g'>8 r8 <e e'>8 r8 | % 163
  <cis cis'>8 [ <cis cis'>8 <e e'>8
  <cis cis'>8 ] <a' a'>8 r8 <e e'>8 r8 | % 164
  <cis cis'>8 [ <cis cis'>8 <e e'>8
  <cis cis'>8 ] <a' a'>8 r8 <e e'>8 r8 | % 165
  <d d'>4 -> r8 <a' a'>8 <a a'>8 r8
  <d, d'>8 r8 | % 166
  <d d'>4 r8 <a' a'>8 <a a'>8 r8
  <d, d'>8 r8 | % 167
  <e e'>4 r8 <g g'>8 <b b'>8 r8 <e,
  e'>8 r8 | % 168
  <e e'>4 r8 <g g'>8 <b b'>8 r8 <e,
  e'>8 r8 | % 169
  <cis cis'>4 r8 <e e'>8 <a a'>8 r8
  <e e'>8 r8 | \barNumberCheck #170
  <cis cis'>4 _\< r8 <e e'>8 <a a'>8 r8
  <e e'>8 r8 | % 171
  <fis fis'>8 [ <fis fis'>8 ] r8 <fis fis'>8
  <cis' cis'>8 r8 <cis cis'>8 r8 | % 172
  <b b'>8 [ <b b'>8 ] r8 <b b'>8
  <b b'>8 r8 <b b'>8 r8 | % 173
  <a a'>8 [ _\! _\ff <a a'>8 ] r8 <a a'>8
  <e' e'>8 r8 <e e'>8 r8 | % 174
  <a, a'>8 [ <a a'>8 <a a'>8
  <a a'>8 ] <a a'>8 [ <a a'>8 <a a'>8
  <a a'>8 ] | % 175
  <a, a'>8 [ <a a'>8 <a a'>8 <a a'>8 ]
  <a a'>8 [ <a a'>8 <a a'>8 <a a'>8 ]
  | % 176
  <d fis a d>4 <fis' d' fis>4 <a d a'>4
  <fis' d' fis>4 | % 177
  <a,, cis e a>4 <cis a' cis>4 <e a e'>4
  <a e' g>4 | % 178
  <b, d fis b>4 <d b' d>4 <fis b fis'>4
  <a e' a>4 | % 179
  <d,, fis a d>4 <fis' d' fis>4 <a d a'>4
  <fis' d' fis>4 | \barNumberCheck #180
  <g,, b d g>4 <b' g' b>4 <d g d'>4
  <b' g' b>4 | % 181
  <e,,, gis b e>4 <gis' e' gis>4 <b e b'>4
  <gis' e' gis>4 | % 182
  <a,, cis e a>4 <cis a' cis>4 <e a e'>4
  <a e' g>4 | % 183
  <d,, fis a d>4 <fis' d' fis>4 <a d a'>4
  <fis' d' fis>4 | % 184
  <a,, cis e a>4 <cis a' cis>4 <e a e'>4
  <a e' g>4 | % 185
  <b, d fis b>4 <d b' d>4 <fis b fis'>4
  <a e' a>4 | % 186
  <d,, fis a d>4 <fis' d' fis>4 <a d a'>4
  <fis' d' fis>4 | % 187
  <g,, b d g>4 <b' g' b>4 <d g d'>4
  <b' g' b>4 | % 188
  <a,, cis e a>4 <cis a' cis>4 <e a e'>4
  <a e' g a>4 | % 189
  <d, fis a d>2 -- -> _\ff <a cis e a>2 -- -> |
  \barNumberCheck #190
  <b, d fis b>4 <b' d fis b>4 <a, cis e a>4
  <a' cis e a>4 | % 191
  <d g b>2 <e bes' d>2 | % 192
  <cis e a cis>4 <e a e'>4 <a e' a>4
  <a cis e g>4 | % 193
  <d, fis a d>2 _\ff r2 | % 194
  R1*3 \bar "|."
}

PartPFiveVoiceSix =  \relative fis {
  \clef "bass" \numericTimeSignature\time 4/4 \key c \major s1*4
  s1*4 s1*3 s1*3 s1*3
  s1*3 s1*3 s1*3 s1*3
  s1 | % 31
  \time 6/8  s1. s1*3 s4*9 s4*9
  s4*9 s4*9 s4*9 s4*9
  s2. | % 56
  fis8 -! s16 a8 -! [ a16 -! ]
  a8 -! s4 | % 57
  c,8 -! s16 a'8 -! [ a16 -! ]
  a8 -! s4 | % 58
  b,8 -! s16 a'8 -! [ a16 -! ]
  a8 -! s4 s2. | \barNumberCheck #60
  \numericTimeSignature\time 4/4  s1*3 s1*4 s1*3
  s1*3 s1*4 s1*4 s1*3
  s1*2 s1*2 s1*3 s1 | % 92
  \time 6/8  s1. s4*15 s1*3 s1*3
  s1. | % 109
  \numericTimeSignature\time 4/4  s1 s1*3 s1*3
  s1*4 s1*6 s1*4 s1*4
  s1*4 s1*4 s1*3 s1*3
  s1*4 s1*3 s1*3 s1*3
  s1*3 s1*4 s1*3 s1*3
  s1*5 s1*5 s1*5 s1*5
  s1*3 \bar "|."
}

PartPFiveVoiceTwo =  \relative c' {
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major s1*4
  s1*4 s1*3 s1*3 s1*3
  s1*3 s1*3 s1*3 s1*3
  s1 | % 31
  \time 6/8  s1. s1*3 s4*9 s4*9
  s4*9 s4*9 s4*9 s4*9
  s1. | % 57
  c2 ~ c8 [ c8 ] | % 58
  b2 ~ b8 [ a8 ] s2. |
  \barNumberCheck #60
  \numericTimeSignature\time 4/4  <b' e>2 <a b e>4
  ~ ~ ~ <a b e>4 | % 61
  <a b cis fis>4 r4 cis2 | % 62
  <a b cis e>4 ~ ~ ~ ~ <a b cis e>4 <gis
  b e>2 | % 63
  <a b e>2 <a b dis fis>4 a4 s1*3
  s1*3 s1*3 s1*4 s1*4
  s1*3 s1*2 s1*2 s1*3
  s1 | % 92
  \time 6/8  s1. s4*15 s1*3 s1*3
  s1. | % 109
  \numericTimeSignature\time 4/4  s1 s1*3 s1*3
  s1*2 | % 118
  <a' d>2 \arpeggio \arpeggio <g a d>4 ~ ~ ~
  <g a d>4 | % 119
  <g a b e>4 \arpeggio \arpeggio \arpeggio \arpeggio r4
  b2 \arpeggio s1*6 s1*4
  s1*4 s1*4 s1*4 s1*3 s1*3
  s1*4 s1*3 s1*3 s1*3
  s1*3 s1*4 s1*3 s1*3
  s1*5 s1*5 s1*5 s1*5
  s1*3 \bar "|."
}

\book {
  \bookOutputName "总谱"
  \header {
    subtitle = "总谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  C" }
    }
  }
  \score {
    <<
      \new NumberedStaff \with {
        instrumentName = "笛子"
        shortInstrumentName = "Di."
      } {
        \numberedMusic { \keytimeAlt \dizi } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "二胡"
        shortInstrumentName = "Eh."
      } {
        \numberedMusic { \keytimeAlt \erhu } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "古筝一"
        shortInstrumentName = "Gz. 1"
      } {
        \numberedMusic { \keytimeAlt \guzhengyi } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "古筝二"
        shortInstrumentName = "Gz. 2"
      } {
        \numberedMusic { \keytimeAlt \guzhenger } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "小提琴"
        shortInstrumentName = "Vln."
      } {
        \numberedMusic { \keytimeAlt \PartPTwoVoiceOne } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "大提琴"
        shortInstrumentName = "Vc."
      } {
        \numberedMusic { \keytimeAlt \PartPFourVoiceOne } ##t
      }
    >>
  }
}

\book {
  \bookOutputName "笛子分谱"
  \header {
    subtitle = "笛子分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \paper { page-count = #2 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \dizi } } ##f
      }
    >>
  }
}

\book {
  \bookOutputName "二胡分谱"
  \header {
    subtitle = "二胡分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \paper { page-count = #2 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \erhu } } ##f
      }
    >>
  }
}

\book {
  \bookOutputName "古筝一分谱"
  \header {
    subtitle = "古筝一分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \paper { page-count = #2 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzhengyi } } ##f
      }
    >>
  }
}

\book {
  \bookOutputName "古筝二分谱"
  \header {
    subtitle = "古筝二分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \paper { page-count = #2 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzhenger } } ##f
      }
    >>
  }
}
