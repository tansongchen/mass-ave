\version "2.24.4"
\pointAndClickOff
\include "../numbered.ly"

keytime = { \key d \major \time 4/4 }

\header {
  title = "上海滩"
  encodingdate =  "2025-01-10"
  composer =  "编曲：罗畯文"
  arranger = "制谱：谭淞宸"
  copyright = "© Mass Ave 国乐团 2025"
}

\paper {
  ragged-last = ##t
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


\book {
  \bookOutputName "总谱"
  \header {
    subtitle = "总谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \score {
    <<
      \new NumberedStaff \with {
        instrumentName = "笛子"
        shortInstrumentName = "Di."
      } {
        \numberedMusic { \keytime \dizi } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "二胡"
        shortInstrumentName = "Eh."
      } {
        \numberedMusic { \keytime \erhu } ##t
      }
      \new NumberedStaff \with {
        instrumentName = "古筝一"
        shortInstrumentName = "Gz."
      } {
        \numberedMusic { \keytime \guzheng } ##t
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
  \paper { page-count = #1 }
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
  \paper { page-count = #1 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \erhu } } ##f
      }
    >>
  }
}

\book {
  \bookOutputName "古筝分谱"
  \header {
    subtitle = "古筝分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
    }
  }
  \paper { page-count = #1 }
  \score {
    <<
      \new NumberedStaff {
        \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 \guzheng } } ##f
      }
    >>
  }
}
