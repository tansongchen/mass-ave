\version "2.22.1"
\language "english"
\header {
  title = "自由的鸟"
  subtitle = "总谱"
  composer = "作曲：Brabeeba Wang"
  arranger = "编曲、制谱：谭淞宸"
  copyright = "为 Mass Ave 国乐团在常春藤春晚中的演出而作"
  tagline = "© Mass Ave 国乐团 2022"
  meter = "    1 = D"
  instrument = " "
}

\include "numbered.ly"

keytime = { \key d \major \time 4/4 }
twice = #(define-music-function (mus) (ly:music?) #{ \repeat unfold 2 { #mus } #})
thrice = #(define-music-function (mus) (ly:music?) #{ \repeat unfold 3 { #mus } #})

motif = { b8. a16 d4 }
motifc = { a8 b16 a fs8 e d2 }
motifA = { \motif \motif \motifc }
motifB = { d8. e16 fs8 a e16 fs e d b8 a e'16 fs e d b8 a d2 }
motift = { fs8. e16 a4 }
motifAt = { \motift \motift e8 fs16 e d8 b a2 }
motifBt = { a8. b16 d8 e b16 d b a fs8 e b'16 d b a fs8 e a2 }
melody = { \motifA \motifB }
melodyt = { \motifAt \motifBt }
comotifA = { a8. fs16 e4 d8 e4. a8. fs16 d4 cs8 d4. }
comotifAt = { e8. cs16 b4 a8 b4. e8. cs16 a4 gs8 a4. }
comotifB = { a'8. fs16 e8 fs16 e d8 e4. a8. fs16 d8 e16 d cs8 d4. }
comotifBt = { e'8. cs16 b8 cs16 b a8 b4. e8. cs16 a8 b16 a gs8 a4. }
comotifC = { e8 fs16 e d8 e }
comotifCt = { b8 cs16 b a8 b }
comotifD = { d8 e16 d cs8 d }
comotifDt = { a8 b16 a gs8 a }
comelody = { \comotifA \comotifB \comotifC \comotifD \comotifC r2 \comotifD r2 }
comelodyc = { \comotifA \comotifB \comotifC \comotifD r2 \comotifC r2 \comotifD }
comelodyt = { \comotifAt \comotifBt \comotifCt \comotifDt \comotifCt r2 \comotifDt r2 }
mA = { cs8 d16 cs b8 cs }
mB = { e8 fs16 e d8 e }
mC = { fs8 gs16 fs e8 fs }
mD = { a8 b16 a gs8 a }
mE = { b8 cs16 b a8 b }

climaxT = {
  \twice { d16 b a8 a,4 r a r a16 a a8 a4 r }
  \twice { d'16 d b a r4 r a,16 a a a }
}

climaxA = {
  \twice { d16 b a8 e4 d'16 b a8 e4 r e16 e e8 e4 r }
  \twice { d'16 d b a d d b a r4 a,16 a a a }
}

climaxB = {
  \twice { a16 a, a a a4 a'16 a, a a a4 d'16 b a8 a16 a a8 a4 r }
  \twice { a16 a, a a a a a a d' d b a a a a a }
}

sc = {
  d16 d b a b b g fs \twice { a a fs e fs fs d cs } \twice { e e cs b d d b a } b b g fs a a fs e
}

sct = \transpose d a \sc

scc = { \repeat unfold 6 { e e, e e e e e e }}
scct = { \repeat unfold 6 { a a, a a a a a a }}

finalA = {
  d2. e16 fs a b a2 b4 a fs a fs e
  d2. e16 fs a b a2 b4 a fs a fs a
  e2. e'16 fs a b a2 d4 a fs a fs e
  d2. e16 fs a b a2 b4 a fs a fs e
  d2. e4 fs4. e8 d2~ d1
}

finalAt = {
  d2. e16 fs a b a2 b4 a fs a fs e
  d2. e16 fs a b a2 b4 a fs a fs a
  e2. e16 fs a b a2 d4 a fs a fs e
  d2. e16 fs a b a2 b4 a fs a fs e
  d2. e4 fs4. e8 d2~ d1
}

finalB = {
  d1
  d2 e4 d e2 fs4 e d2. e8 d
  d2 e4 d e2 fs4 e d2. fs8 e
  d2 e4 d e2 fs4 e d2. e8 d
  d2 e4 d cs2 d4 cs
  a2. b4 cs4. b8 a2~ a1
}

erhuI = \relative d''' {
  R1*10
  b4 a d2 R1 b4 a d2 R1
  \repeat volta 2 {
    d,2. fs8 e d2. fs8 e d2. e4 fs4. e8 d2
    \relative d''' { \melody }
    d2. e4 fs4. e8 d2
    e2. fs8 e d2. e8 d
    e2. fs8 e d2. e8 d
    e8 e16 fs d4 e8 e16 fs d4
  }
  \alternative {
    { e8 e16 e fs8 fs16 fs g8 g16 g a8 a16 a }
    { e8 e16 e fs8 fs16 fs g8 g16 g gs8 gs16 gs }
  }
  \comelody
  e4 r e r e r e r \relative d''' {
    \mE \mA
    \climaxT
  }
  \relative d''' { \sc }
  \relative d' { \finalA }
  \repeat unfold 3 { \motif r2 R1 }
  R1*4 b2 a d1 \bar "|."
}

erhuII = \relative d'' {
  R1*10
  R1 b4 a d,2 R1 b'4 a d,2
  \repeat volta 2 {
    \relative d'' { a2. d8 b a2. d8 b a2. b4 d4. b8 a2 }
    \relative d'' { \melodyt }
    \relative d'' {
      a2. b4 d4. b8 a2
      a2. d8 b a2. b8 a
      a2. d8 b a2. b8 a
      e8 e16 fs d4 e8 e16 fs d4
    }
  }
  \alternative {
    \relative d' { e8 e16 e fs8 fs16 fs g8 g16 g a8 a16 a }
    \relative d' { e8 e16 e fs8 fs16 fs g8 g16 g gs8 gs16 gs }
  }
  \relative d'' { \comelodyt }
  e4 r e r e r e r \relative d'' { \mE \mA }
  \relative d'' { \climaxA }
  \sct
  \finalAt
  \twice { r2 \motif R1 }
  R1 \motif r2
  R1*4 e2 a d,1 \bar "|."
}

liuqin = \relative d''' {
  b2 a d1
  R1*12
  \repeat volta 2 {
    \melody
    d8 d d d d d d d b b b b d d d d
    d d d d b b b b gs gs gs gs d'2
    d4. fs8 a,4. d8 gs,4. b8 d2
    \relative d' {
      e8^\markup{ 柳琴以下六小节第二次反复时高八度演奏 } r r e e r r e d r r d d r r d
      e8 fs16 e d4 e8 fs16 e d4 | a'8 b16 a d,4 a'8 b16 a d,4
      e8 r fs r e r fs r
    }
  }
  \alternative {
    { e r fs r g r a r }
    { e r fs r g r gs r }
  }
  \comelodyc
  e4 r e r \mC \mD \mE \mA
  \climaxT
  \relative d''' { \sc }
  \relative d' { \finalA }
  \relative d'' { \twice { R1 \motifc } R1 R1 \relative d'' { \motifc } }
  \relative d''' { \repeat unfold 3 { b8 a d2. } b2 a d1 } \bar "|."
}

yangqin = \fixed d' {
  b2 b a1
  R1*12
  \repeat volta 2 {
    % Melody 1
    <d a>4 r <d a> r <b, a> r <a, e> r
    <a, e> r <a, e> r <d fs> r <b, a> r
    % Melody 2
    <a, d>8 <a, d> <a, d> <a, d> <a, d> <a, d> <a, d> <a, d>
    <fs, b,> <fs, b,> <fs, b,> <fs, b,> <a, e> <a, e> <a, e> <a, e>
    \twice {
      <a, e>8 <a, e> <a, e> <a, e> <b, a> <b, a> <b, a> <b, a>
      <gs, fs> <gs, fs> <gs, fs> <gs, fs> <b, a>4 r4
    }
    % Bridge
    \twice {
      <gs, fs>8 r r <gs, fs> <gs, fs>8 r r <gs, fs> <b, a> r r <b, a> <b, a> r r <b, a>
    }
    \twice { <fs, e> r <e, d> r }
  }
  \alternative {
    { <e, e> r <d, d> r <b,, b,> r <a,, a,> r }
    { <e, e> r <d, d> r <b,, b,> r <b,, b,> r }
  }
  \relative d' {
    \twice { e2 fs8 e d e e2 e8 d cs d }
  }
  e4 r d r e r a r d r a r
  \fixed d' { <a e'> r <a e'> r <a e'> r } \relative d'' { \mD \mE \mA }
  \relative d'' { \climaxA }
  \relative d'' { \sc }
  \finalB
  R1*10 g2 g fs1 \bar "|."
}

pipa = \relative d' {
  e2 fs d1
  R1*12
  \repeat volta 2 {
    a4 r a r b r a r | a r b r e r a r
    \fixed d' {
      d4. e8 d4. e8 <b, fs>4. e8 <d a>4. a8
      <d a>4. fs8 <b, a>4. e8 <gs, fs>4. e8 <d a>4 r
    }
    \relative d' { \motifB }
    \twice { gs8 r r gs gs8 r r gs b r r b b r r b }
    d, r e r d r e r
  }
  \alternative {
    { b r d r e r fs r }
    { b r d r e r d r }
  }
  \repeat unfold 8 { cs4. d8 } cs4 r cs r
  cs4 r \relative d' { \comotifC }
  cs4 r \relative d' { \comotifD }
  \relative d' { \mA \mB \mC \mD \mE \mA }
  \climaxB
  \scc
  \relative d' {
    fs1
    d'2 e4 d cs2 d4 cs a2. b8 a
    d2 e4 d b2 cs4 b cs2. d8 cs
    d2 e4 d cs2 d4 cs a2. b8 a
    fs2 g4 fs e2 fs4 e fs2. g4 a4. g8 fs2~ fs1
  }
  \relative d'' { R1 \twice { R1 R1 \motifc } R1*3 d2 cs a1 } \bar "|."
}

guzheng = \relative d {
  e2 fs d1
  R1*12
  \repeat volta 2 {
    d4 r d r fs r a r | a r fs r e r d r
    d4. e8 d4. e8 fs4. a8 d,4. a8
    d4. fs8 a4. d,8 e4. e8 fs2
    \relative d { \motifB }
    e8 fs16 e d4 e8 fs16 e d4 | a'8 b16 a d,4 a'8 b16 a d,4
    e8 r r e e r r e d r r d d r r d
    d r e r d r e r
  }
  \alternative {
    { e r d r b r a r }
    { e' r d r b r d r }
  }
  \repeat unfold 4 { a2 b8 a gs a }
  a8 a a a a a a a
  a4 r \relative d { \comotifC }
  a4 r \relative d { \comotifD }
  \fixed d, {
    r2
    <e e'>4 <e e'> <fs fs'> <fs fs'> <a a'> <a a'> <b b'> <b b'> <e e'>4 <e e'>8 <e e'>
  }
  \relative d' {
    \climaxB
    \scct
  }
  \relative d {
    d1
    fs a fs
    fs e a
    fs a fs
    a a d,2. e4 fs4. e8 d2~ d1
  }
  \relative d' {
    R1*6 \motifc
    R1*3 e2 e d1
  }
  \bar "|."
}

guqinActual = \relative d {
  R1*2
  \sanbanOn
  \fixed d {
    b4 a d
    \allBarOff
    b8 a b a d4
    b8 a4 fs8 a4 d
    b8 d' b a fs a d4
    b8. d'16 e'8 d' b d' b d' b a fs a8~
    a2 fs4 e | a fs8 a fs e d4~ | d1
  }
  \sanbanOff
  R1*67 \bar "|."
}

guqin = \transpose d d' { \guqinActual }

piano = \compressMMRests \fixed d,, {
  R1*41
  \twice { r4 <a, a> r <a, a> r <a, a>16 <a, a> <a, a>8 <a, a>4 r }
  \twice { r2. \repeat unfold 4 { <a, a>16 } }
  R1*30 \bar "|."
}

numberedFull = #(define-music-function (name mus) (string? ly:music?) #{
  \new NumberedStaff \with {
      instrumentName = #name
      shortInstrumentName = #name
  } {
      \numberedMusic { \keytime #mus } ##t
  }
#})

\book {
    \bookOutputName "full"
    \paper { short-indent = 1.5\cm }
    \score {
        <<
            \new StaffGroup = "拉弦" <<
                \numberedFull "二胡 I" \erhuI
                \numberedFull "二胡 II" \erhuII
            >>
            \new StaffGroup = "弹拨" <<
                \numberedFull "柳琴" \liuqin
                \numberedFull "扬琴" \yangqin
                \numberedFull "琵琶" \pipa
                \numberedFull "古筝" \guzheng
            >>
            \numberedFull "古琴" \guqin
            \new Staff \with {
                instrumentName = "钢琴"
                shortInstrumentName = "钢琴"
            } {
                \numericTimeSignature \clef "bass" \keytime \piano
            }
        >>
        \layout {
            \context { \NumberedStaff \RemoveEmptyStaves }
            \context { \Staff \RemoveEmptyStaves }
        }
    }
}

staffFullG = #(define-music-function (name mus) (string? ly:music?) #{
  \new Staff \with {
    instrumentName = #name
    shortInstrumentName = #name
  } { \numericTimeSignature \keytime #mus }
#})

staffFullF = #(define-music-function (name mus) (string? ly:music?) #{
  \new Staff \with {
    instrumentName = #name
    shortInstrumentName = #name
  } { \clef "bass" \numericTimeSignature \keytime #mus }
#})

\book {
    \bookOutputName "full-staves"
    \paper { short-indent = 1.5\cm }
    \header {
        meter = ""
    }
    \score {
        <<
            \new StaffGroup = "拉弦" <<
                \staffFullG "二胡 I" \erhuI
                \staffFullG "二胡 II" \erhuII
            >>
            \new StaffGroup = "弹拨" <<
                \staffFullG "柳琴" \liuqin
                \staffFullG "扬琴" \yangqin
                \staffFullG "琵琶" \pipa
                \staffFullF "古筝" \guzheng
            >>
            \staffFullF "古琴" \guqinActual
            \staffFullF "钢琴" \piano
        >>
        \layout { \context { \Staff \RemoveEmptyStaves } }
    }
}

numberedPart = #(define-music-function (mus) (ly:music?) #{
  \new NumberedStaff {
    \numberedMusic { \keytime \compressMMRests { \override MultiMeasureRest.expand-limit = #1 #mus } } ##f
  }
#})

\book {
  \bookOutputName "part-erhu1"
  \header { subtitle = "二胡 I 分谱" }
  \paper { page-count = #1 }
  \score { \numberedPart \erhuI }
}

\book {
  \bookOutputName "part-erhu2"
  \header { subtitle = "二胡 II 分谱" }
  \paper { page-count = #1 }
  \score { \numberedPart \erhuII }
}

\book {
  \bookOutputName "part-liuqin"
  \header { subtitle = "柳琴分谱" }
  \paper { page-count = #1 }
  \score { \numberedPart \liuqin }
}

\book {
  \bookOutputName "part-yangqin"
  \header { subtitle = "扬琴分谱" }
  \score { \numberedPart \yangqin }
}

\book {
  \bookOutputName "part-pipa"
  \header { subtitle = "琵琶分谱" }
  \score { \numberedPart \pipa }
}

\book {
  \bookOutputName "part-guzheng"
  \header { subtitle = "古筝分谱" }
  \score { \numberedPart \guzheng }
}

\book {
  \bookOutputName "part-guqin"
  \header { subtitle = "古琴分谱" }
  \score { \numberedPart \guqin }
}

\book {
  \bookOutputName "part-piano"
  \header { subtitle = "钢琴分谱" }
  \score {
    \new Staff {
      \numericTimeSignature \clef "bass" \keytime \piano
    }
  }
}
