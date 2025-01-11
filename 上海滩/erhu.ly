\version "2.24.4"
\pointAndClickOn
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title = "上海滩"
  subtitle = "二胡分谱"
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

erhu =  \relative d'' {
    | % 1
    \tempo 4=90 R1 | % 2
    d1 :32 _\p _\< | % 3
    cis1 :32 | % 4
    fis,1 :32 | % 5
    fis2 :32 _\! _\ff fis4 ^\fermata ^^ fis8 ^^
    [ a8 ^^ ] | % 6
    b2. fis8 ^^ [ a8 ^^ ] | % 7
    e2. fis8 ^^ [ a8 ^^ ] | % 8
    b2 d2 | % 9
    cis2 cis2 | \barNumberCheck #10
    a2 b2 | % 11
    a2 r4 fis8 ^^ [ _\f a8 ^^ ] | % 12
    b2. fis8 ^^ [ a8 ^^ ] | % 13
    e2. fis8 ^^ [ a8 ^^ ] | % 14
    b8 d4 b8 a4 d,8 ( [
    fis8 ) ] | % 15
    e2. r4 | % 16
    cis'4. _\mp d8 cis4 a4 | % 17
    d4. cis8 d4 d8 ( [
    cis8 ) ] | % 18
    b4. \dim
    cis8 d4 e8 ( [ fis8 ) ] | % 19
    e2 r4 fis,8 [ _\f a8 ]
    | \barNumberCheck #20
    b2. fis8 [ a8 ] | % 21
    e2. fis8 [ a8 ] | % 22
    b8 d4 b8 a4 d,8 [
    fis8 ] | % 23
    e2. a4 _\p | % 24
    cis4. d8 cis8 ( [ b8 ) ]
    cis4 | % 25
    d4. e8 d8 ( [ cis8 ) ]
    d4 | % 26
    cis4. d8 cis2 | % 27
    d2 r8 d8 _\f d8 b8
    | % 28
    d2 ~ d8 [ d8 d8 b8
    ] | % 29
    a2 r4 a8 [ fis8 ] | \barNumberCheck #30
    e2 _\mp a2 | % 31
    d,2 a'16 [ _\< b16 a16 fis16
    ] d4 | % 32
    fis4 _\! _\f ais8 ( [ b8 ) ] cis2
    | % 33
    b8 ( [ fis8 ) d'8 ( cis8 ) ]
    b2 | % 34
    b4. a8 gis2 | % 35
    e2 r4 fis8 [ a8 ] | % 36
    b2. fis8 [ a8 ] | % 37
    e2. fis8 [ a8 ] | % 38
    b8 d4 b8 a4 d,8 [
    fis8 ] | % 39
    e2. r4 | \barNumberCheck #40
    r8 fis8 ( _\mf e8 fis8 ) a2 | % 41
    r8 d,8 ( e8 fis8 ) b4
    b8 ( [ a8 ) ] | % 42
    gis4 fis4 gis4 e4 | % 43
    a2. \dim
    fis8 [ _\f a8 ] | % 44
    b4 fis'4 e8 [
    fis8 e8 d8 ] | % 45
    cis4 e4 a,4 fis8 [ a8 ]
    | % 46
    b4 fis'4 e8 [ fis8
    a8 e8 ] | % 47
    fis2 r4 r4 | % 48
    d4. e8 d4 b4 | % 49
    cis4. d8 cis2 | \barNumberCheck #50
    d4. e8 cis8 [ b8 ] a4
    | % 51
    b2 r4 a4 _\mp | % 52
    d,4 d4 a'2 | % 53
    a4 e4 a2 | % 54
    fis4 fis4 b2 | % 55
    a2 a2 | % 56
    a4 d,4 a'2 | % 57
    a4 e4 a2 | % 58
    fis2 fis2 | % 59
    fis2 \dim r4
    b8 ^^ [ _\f a8 ^^ ] | \barNumberCheck
    #60
    fis2 :32 ^^ fis8 ^^ r8 d'8 ^^ [
    cis8 ^^ ] | % 61
    d2 :32 ^^ d8 ^\fermata ^^ r8 r4 | % 62
    b2 _\p a2 | % 63
    b2 _\< b4 a4 _\! | % 64
    g4 a8 [ b8 ] a2 | % 65
    cis2 b2 | % 66
    b2 cis2 | % 67
    d2 a2 \tempo 4=80 | % 68
    g4 _\mp b4 d2 | % 69
    d,4 fis4 a2 | \barNumberCheck #70
    g1 | % 71
    a8 [ g8 fis8 e8 ] fis2 | % 72
    cis'4. _\mp b8 ais2 | % 73
    b8 ( [ fis8 ) d'8 ( cis8 ) ]
    b2 | % 74
    b4. a8 gis2 | % 75
    e2 \dim r4 r4 | % 76
    fis'4. _\mp g8 fis4 d4 | % 77
    e4. fis8 e4 cis4 | % 78
    d4. e8 fis4 d4 | % 79
    cis4 d4 cis4. a8 |
    \barNumberCheck #80
    cis4. d8 cis4. a8 | % 81
    d4 e4 d2 | % 82
    b2 cis2 | % 83
    d2 r4 e8 ( [ _\f fis8 ) ] | % 84
    a2. e8 ( [ fis8 ) ] | % 85
    b,2. b8 ( [ d8 ) ] | % 86
    e4. \dim
    fis8 e8 ( [ cis8 ) b8 (
    a8 ) ] | % 87
    d2 ^\markup{ \bold {Adagio} } _\p
    d2 | % 88
    d2 d2 | % 89
    d2 d2 | \barNumberCheck #90
    d1 | % 91
    d1 \bar "|."
    }

\score { <<
  \new NumberedStaff {
    \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \erhu } } ##f
  } >> }
