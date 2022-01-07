\version "2.22.0"
\language "english"
\header {
  title = "自由的鸟"
  subtitle = "总谱"
  composer = "作曲：Brabeeba Wang"
  arranger = "编曲、制谱：谭淞宸"
  copyright = "为 Mass Ave 国乐团在常春藤春晚中的演出而作"
  tagline = "© Mass Ave 国乐团 2022"
  meter = \markup { \fontsize #2 { \bold "1" " =  D" } }
  instrument = " "
}

\include "../numbered.ly"

\layout {
  \context {
    \Score {
      \override MetronomeMark.font-name = "Lilypond Serif, STFangsong, SimFang"
    }
  }
}

\paper {
  #(define fonts
    (set-global-fonts
     #:roman "Lilypond Serif, Songti SC, STSong, SimSun"
     #:sans "Lilypond Sans Serif, PingFang SC, STXihei, SimHei"
     #:typewriter "Lilypond Monospace, Kaiti SC, STKaiti, SimKai"
    ))
}

keytime = { \key d \major \time 4/4 }
twice = #(define-music-function (mus) (ly:music?) #{ \repeat unfold 2 { #mus } #})
thrice = #(define-music-function (mus) (ly:music?) #{ \repeat unfold 3 { #mus } #})
quadrice = #(define-music-function (mus) (ly:music?) #{ \repeat unfold 4 { #mus } #})

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
comotifAt = { e8. cs16 b4 a8 b4. d8. cs16 a4 gs8 gs4. }
comotifB = { a'8. fs16 e8 fs16 e d8 e4. a8. fs16 d8 e16 d cs8 d4. }
comotifBt = { e'8. cs16 b8 cs16 b a8 b4. d8. cs16 a8 b16 a gs8 gs4. }
comotifC = { e8 fs16 e d8 e }
comotifCt = { b8 cs16 b a8 b }
comotifD = { d8 e16 d cs8 d }
comotifDt = { a8 b16 a gs8 gs }
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
  \twice { d'16 d b a d d b a r4 e16 e e e }
}

climaxAt = {
  \twice { d16 b a8 cs,4 d'16 b a8 cs,4 r cs16 cs cs8 cs4 r }
  \twice { d'16 d b a d d b a r4 cs,16 cs cs cs }
}

climaxB = {
  \twice { a16 a, a a a4 a'16 a, a a a4 d16 b a8 a16 a a8 a4 r }
  \twice { a'16 a, a a a a a a d d b a a a a a }
}

climaxBt = {
  \twice { a16 a, a a g4 a'16 a, a a g4 d'16 b a8 a16 a a8 g4 r }
  \twice { a'16 a, a a a a a a d d b a g g g g }
}

sc = {
  d16 d b a b b g fs \twice { a a fs e fs fs d cs } \twice { e e cs b d d b a } b b g fs a a fs e
}

sct = \transpose d a { \relative d''' \sc }

scc = { \repeat unfold 6 { e e, e e e e e e }}
scct = { \repeat unfold 6 { a a, a a a a a a }}

final = {
  d2.\fermata e16 fs a b a2 b4 a fs a fs e
  d2. e16 fs a b a2 b4 a fs a fs a
  e2. e'16 fs a b a2 d4 a fs a fs e
  d2. e16 fs a b a2 fs4 a fs a fs e
  d2. e4 fs4. e8 d2( d1)
}

prelogA = { \tempo 4 = 80 s1*2\f }
prelogB = {
  \tempo "散板 悠扬地" 4 = 72
  s2.\mp s2.^\markup \italic "accel." s1
  \tempo 4 = 96
  s1 s2^\markup \italic "rit." s1*4
}
prelogC = { s1*2 s1*2^\markup \italic "rit." }
main = {
  \tempo "中板 抒情地" 4 = 96
  s1*4^\markup {
    \dynamic mp \italic \small { 2nd } \dynamic mf
  }
  s1*4\f s1*2\mf
}
bridge = { s1*2\p s1*2\mp s1*3\< }
comain = {
  \tempo "小行板 沉重地" 4 = 88
  s1*2\f s1*3\mp s1*2\p s1*3\<
}
climax = {
  s4\ff s2\sf s2\sf s2.\sf
  s4 s2\sf s2\sf s2.\sf
  \twice { s2. s4\sf }
}
descent = {
  s1\> s1^\markup \italic "accel." s2. \tempo 4 = 120 s4
}
reappear = {
  s1\mp s1*5^\markup \italic "a tempo" s2. s4\mf s1*5 s1*3^\markup \italic "rit."
}
epilogA = { \tempo "悠扬地" 4 = 72 s1*7\pp}
epilogB = { s1*3\> }
epilogC = { s1*4\f }

body = { \main \bridge \comain \climax \descent \reappear }

dynamics = \new Dynamics { \prelogA \prelogB \prelogC \body \epilogA \epilogB \epilogC }

erhuDynamics = \new Dynamics { s1*10 \tempo 4 = 96 \prelogC \body \epilogA s1*3 \epilogC }

liuqinDynamics = \new Dynamics { \prelogA s1*12 \body \epilogA s1*3 \epilogC }

guqinDynamics = \new Dynamics { s1*2 \prelogB s1*62 \epilogB s1*4\! }

pianoDynamics = \new Dynamics { s1*18 \tempo "中板 抒情地" 4 = 96 s1*4\f s1*9  \comain \climax s1*28 \tempo 4 = 72 \epilogC }

erhuI = {
  \relative d''' { R1*10 \twice { b4 a d2 R1 } }
  \repeat volta 2 {
    \relative d'' { \footnote #'(2 . 0.2) "二胡 I 15 ~ 18 小节仅第二次反复时演奏" d2. fs8 e d2. fs8 e d2. e4 fs4. e8 d2 }
    % \relative d'' { d4 r d r a r d r d r e r fs r d r }
    \relative d''' {
      \melody
      d2. e4 fs4. e8 d2
      \twice { e2. fs8 e d2. e8 d }
      \twice { \tuplet 3/2 4 { e8 fs e d e d } }
    }
  }
  \alternative {
    \relative d'' { \tuplet 3/2 4 { e8 fs e fs g fs g a g a b a } }
    \relative d'' { \tuplet 3/2 4 { e8 fs e d e d e fs e gs a gs } }
  }
  \relative d''' {
    \comelody
    \quadrice { e4 r }
  }
  \relative d''' {
    \mE \mA
    \climaxT
  }
  \relative d''' { \sc \final }
  \relative d''' {
    \twice { \motif r2 R1 } \motif r2 R1 R1 R1*3 b1 a d1( d1) \bar "|."
  }
}

erhuII = {
  \relative d'' {
    R1*10 R1 b4 a d,2 R1 b'4 a d,2
  }
  \repeat volta 2 {
    \relative d'' { \footnote #'(2 . 0.2) "二胡 II 15 ~ 18 小节仅第二次反复时演奏" a2.  d8 b a2. d8 b a2. b4 d4. b8 a2 }
    % \relative d'' { a4 r a r e r a r a r b r d r b r }
    \relative d'' { \melodyt }
    \relative d'' {
      a2. b4 d4. b8 a2
      a2. d8 b a2. b8 a
      a2. d8 b a2. b8 a
      \twice { \tuplet 3/2 4 { e8 fs e d e d } }
    }
  }
  \alternative {
    \relative d' { \tuplet 3/2 4 { e8 fs e fs g fs g a g a b a } }
    \relative d' { \tuplet 3/2 4 { e8 fs e d e d e fs e gs a gs } }
  }
  \relative d''' {
    \comelody
    \quadrice { e4 r }
  }
  \relative d'' { \mE \mA }
  \relative d'' { \climaxA }
  \relative d''' {
    \sc
    d2.\fermata e16 fs a b a2 b4 a fs a fs e
    d2. e16 fs a b a2 b4 a fs a fs a
    e2. e16 fs a b a2 d4 a fs a fs e
    d2. e16 fs a b a2 b4 a fs a fs e
    d2. e4 fs4. e8 d2( d1)
  }
  \relative d'' {
    \twice { r2 \motif R1 }
    R1 \motif r2 R1
    R1*3 e1 a d,1( d1) \bar "|."
  }
}

liuqin = \relative d''' {
  b2:32 a:32 d,1:32
  R1*12
  \repeat volta 2 {
    \relative d''' {
      b8. a16 d4 b8. a16 d4
      a8 b16 a fs8 e d2:32
      d8. e16 fs8 a e16 fs e d b8 a e'16 fs e d b8 a d2:32
    }
    d8 d d d d d d d b b b b d d d d
    d d d d b b b b gs gs gs gs d'2
    d4. fs8 a,4. d8 gs,4. b8 d2
    \relative d' {
      \footnote #'(2 . 0.2) "柳琴 25 ~ 29 小节第二次反复时高八度演奏" e8 r r e e r r e d r r d d r r d
      \tuplet 3/2 { e8 fs e } d4 \tuplet 3/2 { e8 fs e } d4 | \tuplet 3/2 { a'8 b a } d,4 \tuplet 3/2 { a'8 b a } d,4
      e8 r fs r e r fs r
    }
  }
  \alternative {
    { e r a r e r a r }
    { e r a r e r gs r }
  }
  \comelodyc
  e4 r e r \mC \mD \mE \mA
  \climaxT
  \relative d''' { \sc }
  \relative d' {
    d2.:32\fermata e16 fs a b a2 b4 a fs a fs e
    d2.:32 e16 fs a b a2 b4 a fs a fs a
    e2.:32 e'16 fs a b a2 d4 a fs a fs e
    d2.:32 e16 fs a b a2 fs4 a fs a fs e
    d2.:32 e4 fs4. e8 d2( d1)
  }
  \relative d'' { R1 \motifc R1*5 R1*3  }
  \relative d''' { b1:32 a:32 d1:32( d1) } \bar "|."
}

pipa = \relative d' {
  g2:32 e:32 fs1:32
  R1*12
  \repeat volta 2 {
    \relative d' {
      a4 r a r fs r a r | a r b r d, r a' r
    }
    \relative d' {
      d4. e8 d4. e8 fs4. a8 d,4. a'8
      d,4. fs8 a,4. d8 e4. e8 fs4 r
    }
    \relative d' { d8. e16 fs8 a e16 fs e d b8 a e'16 fs e d b8 a d2:32 }
    \relative d {
      \twice { gs8 r r gs gs8 r r gs b r r b b r r b }
      a r d, r a' r d, r
    }
  }
  \alternative {
    \relative d' { cs r d r b r cs r }
    \relative d' { cs r a r cs r b r }
  }
  \relative d {
    \twice { e2 fs8 e d e d2 e8 d cs d }
    e4 r d r
    e4 r \comotifC
    d4 r \comotifD
  }
  \relative d { e4 r4 e4 r4 \mC \mD \mE \mA }
  \relative d'' { \climaxAt }
  \relative d'' { \sc }
  \relative d {
    fs2.:32\fermata r4
    d'2 e4 d cs2 d4 cs a2.:32 b8 a
    d2 e4 d b2 cs4 b cs2.:32 d8 cs
    d2 e4 d cs2 d4 cs a2.:32 b8 a
    fs2 g4 fs e2 fs4 e fs2.:32 g4 a4. g8 fs2( fs1)
  }
  \relative d' { R1*3 \motifc R1*3 R1*3 d'1:32 cs:32 a1:32( a1) } \bar "|."
}

guzhengI = \relative d'' {
  e2:32 cs:32 a1:32
  R1*12
  \repeat volta 2 {
    % Melody 1
    d4 r d r b r a r
    a r a r fs r b r
    % Melody 2
    a8 a a a a a a a fs fs fs fs a a a a
    \twice { a a a a e e e e fs fs fs fs a4 r }
    % Bridge
    \twice { fs8 r r fs fs8 r r fs a r r a a r r a }
    \twice { cs r a r }
  }
  \alternative {
    { e r fs r e r e r }
    { e r fs r e r gs r }
  }
  \relative d'' {
    \twice { <e, cs'>4. e'8 <e, cs'>4. e'8 <b e>4. d8 <gs, e'>4. d'8 }
    <e, cs'>4 r <b' e> r <e, cs'>4 r r r <b' e> r r r
  }
  \relative d' {
    \repeat unfold 6 { <e e'>4 r4 }
  }
  \relative d'' { \climaxBt }
  \relative d' { \scc }
  \relative d' {
    d2.:32\fermata r4
    d2 e4 d e2 fs4 e d2.:32 e8 d
    d2 e4 d e2 fs4 e d2.:32 fs8 e
    d2 e4 d e2 fs4 e d2.:32 e8 d
    d2 e4 d cs2 d4 cs
    a2.:32 b4 cs4. b8 a2( a1)
  }
  \relative d' {
    R1*7 R1*3 g1:32 g:32 fs1:32( fs1) \bar "|."
  }
}

guzhengII = \relative d {
  b2:32 cs:32 d1:32
  R1*12
  \repeat volta 2 {
    d4 r d r fs r a r | a r fs r e r d r
    d4. e8 d4. e8 fs4. a8 d,4. a'8
    d,4. fs8 a,4. d8 e4. e8 fs2
    \relative d { d8. e16 fs8 a e16 fs e d b8 a e'16 fs e d b8 a d2:32 }
    \tuplet 3/2 { e8 fs e } d4 \tuplet 3/2 { e8 fs e } d4 | \tuplet 3/2 { a'8 b a } d,4 \tuplet 3/2 { a'8 b a } d,4
    e8 r r e e r r e d r r d d r r d
    e r a r e r a r
  }
  \alternative {
    { a, r fs r g r a r }
    { a r d r a r e' r }
  }
  \twice { <a, e'>4 r <a e'> r <e d'> r <e d'> r }
  <a e'>4 r <e e'> r <a e'> r r r <e e'> r r r
  \relative d, {
    \repeat unfold 6 { <e e'>4 r4 }
  }
  \relative d' { \climaxB }
  \relative d' { \scct }
  \relative d {
    d,2.:32\fermata r4
    fs2 g4 fs a2 b4 a
    fs2.:32 e8 fs
    fs2 g4 fs g2 a4 g
    a2.:32 b8 a
    fs2 g4 fs a2 b4 a
    fs2.:32 e8 fs
    a2 b4 a a2 b4 a
    d,2.:32 e4 fs4. e8 d2( d1)
  }
  \relative d {
    R1*6 \motifc
    R1*3 e1:32 e:32 d1:32( d1)
  }
  \bar "|."
}

addHarmonics =
#(define-music-function (parser location mus) (ly:music?)
   (begin
    (music-map
     (lambda (m)
       (if (music-is-of-type? m 'note-event)
           (set!
            (ly:music-property m 'articulations)
            (cons
             (make-music 'ArticulationEvent
                         'articulation-type "flageolet")
             (ly:music-property m 'articulations)
             )
            )
           )
       m
       )
     mus
     )
    mus
    )
   )

guqinActual = \relative d {
  R1*2
  \sanbanOn
  \addHarmonics {
    b'4 a d,
    \allBarOff
    b'8 a b a d,4
    b'8 a4 fs8 a4 d,
    b'8[ d] b[ a] fs a d,4
    b'8. d16 e8 d b8.[ d16] b8[ d] b[ a] fs[ a] fs a4 d,8 e4 fs8 a fs8. a16 fs4 e d~ d1
  }
  \sanbanOff
  R1*62
  \relative d' { << \addHarmonics { \footnote #'(2 . 1.5) "古琴 73 ~ 75 小节休止符的时长要一次比一次长" b8 a d4 r4\fermata r4 b8 a d4 r4\fermata r4 b8 a d4 r4\fermata r4 } { s1*3 }>>}
  R1*4
  \bar "|."
}

guqin = \transpose d d' { \guqinActual }

piano = \compressMMRests \relative d {
  R1*18
  \twice { <d d'>2. <fs fs'>8 <e e'> } <d d'>2. <e e'>4 <fs fs'>4. <e e'>8 <d d'>2
  R1*11
  r2. <d, d'>8 <e e'> r2. <cs cs'>8 <d d'> r4 <d d'>8 <e e'> r4 <cs cs'>8 <d d'> <e e'>4 r2. <d d'>4 r2.
  <<
    \relative d, { \mA \mB \mC \mD \mE \mA }
    \relative d { \mA \mB \mC \mD \mE \mA }
  >>
  \twice { r4 <a, a'> r <a a'> r <a a'>16 <a a'> <a a'>8 <a a'>4 r }
  \twice { r2. \quadrice { <a a'>16 } }
  R1*28
  \relative d, { <e e'>1 <cs cs'> <d d'>~ <d d'> }
  \bar "|."
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
  \bookOutputName "总谱"
  \paper {
    short-indent = 1.5\cm
    page-count = 7
  }
  \score {
    <<
      \new StaffGroup = "拉弦" <<
        \numberedFull "二胡 I" \erhuI
        \numberedFull "二胡 II" \erhuII
      >>
      \dynamics
      \new StaffGroup = "弹拨" <<
        \numberedFull "柳琴" \liuqin
        \numberedFull "琵琶" \pipa
        \numberedFull "古筝 I" \guzhengI
        \numberedFull "古筝 II" \guzhengII
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
  \bookOutputName "总谱（五线谱版）"
  \paper {
    short-indent = 1.5\cm
  }
  \header {
    meter = ""
  }
  \score {
    <<
      \new StaffGroup = "拉弦" <<
        \staffFullG "二胡 I" \erhuI
        \staffFullG "二胡 II" \erhuII
      >>
      \dynamics
      \new StaffGroup = "弹拨" <<
        \staffFullG "柳琴" \liuqin
        \staffFullG "琵琶" \pipa
        \staffFullG "古筝 I" \guzhengI
        \staffFullF "古筝 II" \guzhengII
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

tuningInstructions = #(define-music-function (mus) (ly:music?) #{
  \new NumberedStaff \with {
    \remove Time_signature_engraver
    \remove Key_engraver
    \remove Clef_engraver
    \omit Score.BarLine
  } {
    \time 100/4
    \numberedMusic { #mus } ##f
  }
                        #})

\book {
  \bookOutputName "二胡 I 分谱"
  \header {
    subtitle = \markup { "二胡 I 分谱" }
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
      \hspace #1
      \raise #0.2 {
        "(" "定弦"
        \raise #0.8 \score {
          \layout { indent = 0\cm }
          \tuningInstructions { c'4 g' }
        }
        ")"
      }
    }
  }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \erhuI \erhuDynamics >> }
}

\book {
  \bookOutputName "二胡 II 分谱"
  \header {
    subtitle = \markup { \medium "二胡 II 分谱" }
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
      \hspace #1
      \raise #0.2 {
        "(" "定弦"
        \raise #0.8 \score {
          \layout { indent = 0\cm }
          \tuningInstructions { c'4 g' }
        }
        ")"
      }
    }
  }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \erhuII \erhuDynamics >> }
}

\book {
  \bookOutputName "柳琴分谱"
  \header {
    subtitle = "柳琴分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
      \hspace #1
      \raise #0.2 {
        "(" "定弦"
        \raise #0.8 \score {
          \layout { indent = 0\cm }
          \tuningInstructions { f4 c' f' c'' }
        }
        ")"
      }
    }
  }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \liuqin \liuqinDynamics >> }
}

\book {
  \bookOutputName "琵琶分谱"
  \header {
    subtitle = "琵琶分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
      \hspace #1
      \raise #0.2 {
        "(" "定弦"
        \raise #0.8 \score {
          \layout { indent = 0\cm }
          \tuningInstructions { g,4 c d g }
        }
        ")"
      }
    }
  }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \pipa \liuqinDynamics >> }
}

\book {
  \bookOutputName "古筝 I 分谱"
  \header { subtitle = \markup { \medium "古筝 I 分谱" } }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \guzhengI \liuqinDynamics >> }
}

\book {
  \bookOutputName "古筝 II 分谱"
  \header { subtitle = \markup { \medium "古筝 II 分谱" } }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \guzhengII \liuqinDynamics >> }
}

\book {
  \bookOutputName "古琴分谱"
  \header {
    subtitle = "古琴分谱"
    meter = \markup {
      \fontsize #2 { \bold "1" " =  D" }
      \hspace #1
      \raise #0.2 {
        "(" "定弦"
        \raise #0.8 \score {
          \layout { indent = 0\cm }
          \tuningInstructions { a,4 c d e g a c' }
        }
        ")"
      }
    }
  }
  \paper { page-count = #1 indent = 0\cm }
  \score { << \numberedPart \guqin \guqinDynamics >> }
}

\book {
  \bookOutputName "钢琴分谱"
  \header {
    subtitle = "钢琴分谱"
    meter = ""
  }
  \paper { page-count = #1 indent = 0\cm }
  \score {
    <<
      \new Staff {
        \override MultiMeasureRest.expand-limit = #1
        \numericTimeSignature \clef "bass" \keytime \piano
      }
      \pianoDynamics
    >>
  }
}
