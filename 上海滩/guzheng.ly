\version "2.24.4"
\pointAndClickOn
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title = "上海滩"
  subtitle = "古筝分谱"
  meter = \markup {
    \fontsize #2 { \bold "1" " =  D" }
  }
  encodingdate =  "2025-01-10"
  composer =  "编曲：罗畯文"
  arranger = "制谱：谭淞宸"
  tagline = "© Mass Ave 国乐团 2025"
}

\paper {
  ragged-last = ##t
  page-count = #1
  #(define fonts
    (set-global-fonts
     #:roman "Lilypond Serif, Noto Serif CJK SC, Songti SC, STSong"
     #:sans "Lilypond Sans Serif, Noto Sans CJK SC, PingFang SC, STXihei"
     #:typewriter "Lilypond Monospace, LXGW WenKai, Kaiti SC, STKaiti, SimKai"
    ))
}

\layout {}

guzheng = \relative b {
  \arpeggioParenthesis
  \override Glissando.style = #'zigzag
    | % 1
    \tempo 4=90 b4 \glissando _\p _\< b'4 \glissando
    b,4 \glissando b'4 \glissando | % 2
    b,4 \glissando d'4 \glissando b,4
    \glissando d'4 \glissando | % 3
    b,4 \glissando d'4 \glissando b,4
    \glissando d'4 \glissando | % 4
    b,4 \glissando b''4 \glissando b,,4
    \glissando b''4 | % 5
    b,,4 \glissando _\! _\f b''4
    <b,,, b'>4\arpeggio ^\fermata ^^ r4 | % 6
    r4 <b b'>8.\arpeggio [ <b b'>16\arpeggio ]
    <b b'>4\arpeggio r4 | % 7
    r4 <a a'>8.\arpeggio [ <a a'>16\arpeggio ]
    <a a>4\arpeggio r4 | % 8
    b'4 \glissando b'4 b,4 \glissando
    d'4 \glissando | % 9
    a,2 \glissando a''2 \glissando | \barNumberCheck
    #10
    d,,4 :32 a8 [ b8 ] d4 e4 | % 11
    d2 :32 r2 | % 12
    r4 <b, b'>8.\arpeggio [ <b b'>16\arpeggio
    ] <b b'>4\arpeggio r4 | % 13
    r4 <a a'>8.\arpeggio [ <a a'>16\arpeggio ]
    <a a>4\arpeggio r4 | % 14
    R1*2 | % 16
    r8 a''16 fis16 e8 fis8
    a2 :32 | % 17
    r8 a16 fis16 e8 fis8
    b,2 :32 | % 18
    r8 b16 d16 e8 fis8 e2
    :32 | % 19
    r8 a,16 b16 d8 e8 a4
    :32 r4 | \barNumberCheck #20
    <fis b>4 <b fis'>4 <fis' b>4 r4 | % 21
    <e, a>4 <a e'>4 <e' a>4 r4 | % 22
    fis4 :32 e4 :32 d4 :32 a8
    d8 | % 23
    e8 e16 fis16 a8
    fis8 e4 :32 r4 | % 24
    <fis, a>4 <a fis'>4 <fis' a>4 r4 | % 25
    <fis, b>4 <b fis'>4 <fis' b>4 r4 | % 26
    <e, a>4 <a e'>4 <e' a>4 <e a>4
    | % 27
    d2 :32 d,4 \glissando a''4 \glissando | % 28
    d,2 ~ :32 d8 d8 d8
    b8 | % 29
    a2 ~ :32 a8 [ a8 a8 fis8 ] |
    \barNumberCheck #30
    b4. :64 a8 d,4 :32 e8 [ d16
    e16 ] | % 31
    fis2 :32 r8 fis8 fis8 e8 | % 32
    fis2 ~ :32 fis8 d'8 d8 cis8
   | % 33
    b2. :64 fis8 fis8 | % 34
    e4. :64 fis8 d'8 cis8 b8
    fis8 | % 35
    a2 :32 r2 | % 36
    <d, fis>4 _\p <fis b>4 d'2 :32 | % 37
    <a, e'>4 <e' a>4 e'2 :32 | % 38
    d,4. :32 e8 d4 a'8 fis8
    | % 39
    e8 e16 fis16 a8 [ fis8 ]
    e4 :32 r4 | \barNumberCheck #40
    r8 a16 fis16 e8 [ fis8 ]
    a2 :32 | % 41
    r8 a16 fis16 e8 [ fis8 ]
    b2 :32 | % 42
    r8 b,16 d16 e8 [ fis8 ]
    e2 :32 | % 43
    r8 a,16 b16 d8 [ e8 ] a4
    :32 r4 | % 44
    R1*4 | % 48
    b'4. :32 b8 b8 [ fis8 ]
    b4 :32 | % 49
    a4. :32 a8 a8 [ e8 ]
    a4 :32 | \barNumberCheck #50
    b4. :32 b8 a2 :32 | % 51
    b,,4 \glissando d'4 \glissando a,4
    \glissando _\f e''4 | % 52
    a,8 [ d8 fis8 d8 ]
    a8 [ d8 fis8 d8 ] | % 53
    a8 [ e'8 a8 e8 ]
    a,8 [ e'8 a8 e8 ] | % 54
    fis,8 [ b8 d8 b8 ] fis8 [
    b8 d8 b8 ] | % 55
    fis8 [ a8 fis'8 b,8 ]
    a,4 \glissando e''4 | % 56
    d,2 \glissando a''2 \glissando | % 57
    a,,2 \glissando e''4 \glissando a,4
    | % 58
    b2 :32 fis2 :32 | % 59
    b4 :32 <b,, b'>8.\arpeggio [ _\ff
    <b b'>16\arpeggio ] <b b'>4\arpeggio r4 |
    \barNumberCheck #60
    r4 <b b'>8.\arpeggio [ <b b'>16\arpeggio ]
    <b b'>4\arpeggio ^^ r4 | % 61
    r4 <b b>8.\arpeggio [ <b b'>16\arpeggio ]
    <b b'>4\arpeggio ^^ r4 | % 62
    R1*5 | % 67
    R1*8 | % 75
    r2 r4 fis''8 [ _\mf a8 ] | % 76
    b2. :64 fis8 [ a8 ] | % 77
    e2. :64 fis8 [ a8 ] | % 78
    b8 d4 b8 a4 d,8 [
    fis8 ] | % 79
    e2. :64 r4 | \barNumberCheck #80
    r8 fis'8 _\p e8 fis8 a8
    r8 r4 | % 81
    r8 d,8 e8 fis8 b,8 r8 r4
    | % 82
    R1*2 | % 84
    cis4 d4 cis2 | % 85
    d4 e4 d2 | % 86
    R1*2 | % 88
    r2 d,4 \glissando a'4 \glissando | % 89
    d,4 \glissando d'4 \glissando d,4
    \glissando a''4 \glissando | \barNumberCheck #90
    d,,2 \glissando d''2 \bar "|."
}

\score { <<
  \new NumberedStaff {
    \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzheng } } ##f
  } >> }
