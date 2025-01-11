\version "2.24.4"
\pointAndClickOn
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title = "上海滩"
  subtitle = "笛子分谱"
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

dizi = \relative fis' {
    | % 1
    r2 r4 fis8 [ _\p _\< a8 ] | % 2
    b2 r4 fis8 [ a8 ] | % 3
    e2 r4 fis8 [ a8 ] | % 4
    b4 fis'4 e4 a,4 | % 5
    b2 _\! _\ff r4 fis8 ^^ [ a8 ^^ ] | % 6
    b2. fis8 ^^ [ a8 ^^ ] | % 7
    e2. fis8 ^^ [ a8 ^^ ] | % 8
    b2 r2 | % 9
    R1 | \barNumberCheck #10
    r2 r8 b,8 d8 g8 | % 11
    fis4 d4 r4 r4 | % 12
    R1*3 | % 15
    r2 r4 e8 ( [ fis8 ) ] | % 16
    a2. e8 ( [ fis8 ) ] | % 17
    b,2. b8 ( [ d8 ) ] | % 18
    e4. fis8 e8 ( [ d8 ) b8 (
    d8 ) ] | % 19
    a2 r2 | \barNumberCheck #20
    fis'4. _\p e8 d2 | % 21
    e4. d8 cis2 | % 22
    b4 b4 a2 | % 23
    e'4 d4 cis4 r4 | % 24
    a4 b4 a4 r4 | % 25
    d4 cis4 b4 r4 | % 26
    a4 b4 a2 | % 27
    d2 r8 r8 r4 | % 28
    R1 | % 29
    r2. a'8 [ _\f fis8 ] | \barNumberCheck #30
    b4. a8 d,4 e8 [ d16
    e16 ] | % 31
    fis2 r4 r4 | % 32
    cis4. _\mp b8 ais2 | % 33
    fis'4. e8 d2 | % 34
    e2 e2 | % 35
    a,2 r2 | % 36
    r8 b8 d8 e8 fis4 r4 | % 37
    r8 a,8 e'8 d8 cis2 | % 38
    r8 b8 d8 e8 fis4 e8 d8 | % 39
    cis2. e8 [ _\f fis8 ] | \barNumberCheck #40
    a2. e8 [ fis8 ] | % 41
    b,2. b8 [ d8 ] | % 42
    e4. fis8 e8 [ d8 b8
    d8 ] | % 43
    a2. \dim r4 | % 44
    r2  b'2 _\p | % 45
    a2 r2 | % 46
    b2 a4 e4 | % 47
    fis2 r4 fis8 [ _\f a8 ] | % 48
    b4 fis'4 e8 fis8
    e8 d8 | % 49
    e2 a,4 fis8 a8 |
    \barNumberCheck #50
    b4 fis'4 e8 [ d8
    cis8 a8 ] | % 51
    b2 _\> r4 a,4 _\! _\mf | % 52
    a'4. g8 fis4 g8 a8 | % 53
    a2 e2 | % 54
    fis4. e8 d4 e8 fis8 | % 55
    fis2 r4 a,4 | % 56
    fis'4. g8 fis2 | % 57
    e4. fis8 e2 | % 58
    d2 cis4 b8 a8 | % 59
    b2 r4 fis'8 ^^ _\f a8 ^^ |
    \barNumberCheck #60
    b8 ^^ b4 ^^ b8 ^^ b8 ^^ r8
    fis8 ^^ a8 ^^ | % 61
    b8 ^^ b4 ^^ b8 ^^ b8
    ^\fermata ^^ r8 d,8 _\mp e8 | % 62
    d4. b8 cis4 a4 | % 63
    b2 r2 | % 64
    R1*4 \tempo 4=80 | % 68
    g'2 _\mp g4 r4 | % 69
    fis2 d4 r4 | \barNumberCheck #70
    b2 a2 | % 71
    d2 r2 | % 72
    fis2 fis4 r4 | % 73
    fis4. e8 d2 | % 74
    e2 e4 e4 | % 75
    a,2 \dim r4 r4 | % 76
    R1*3 | % 79
    r2 r4 e'8 [ _\f fis8 ] | \barNumberCheck #80
    a2 r4 e8 [ fis8 ] | % 81
    b,2 r4 b8 [ d8 ] | % 82
    e4. fis8 e8 [ cis8 b8
    a8 ] | % 83
    d2 r2 | % 84
    R1*3 | % 87
    r4 ^\markup{ \bold {Adagio} } fis8 [ a8 ]
    b4. a8 | % 88
    d,4 e8 [ d16 e16 ] fis2 | % 89
    R1*3 \bar "|."
    }

\score { <<
  \new NumberedStaff {
    \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \dizi } } ##f
  } >> }
