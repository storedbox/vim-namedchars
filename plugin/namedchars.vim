""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               Wolfram Language-compatible Named Characters
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Version 11.0.1-r0
"
" Copyright © 2016 David Huffman <dhuffman@linux.com>.
" Copyright © 1988-2016 Wolfram Research, Inc.
"
" Distributed under the terms of the MIT license.
"
"
" Adds insert-mode abbreviations for Wolfram Language's named characters. See
" https://reference.wolfram.com/language/guide/ListingOfNamedCharacters.html
" for reference.
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Commands:
"
"   :EnableNamedCharacters  — Add abbreviations to the current buffer.
"   :DisableNamedCharacters — Remove abbreviations from the current buffer.
"
" Autocmds:
"
"   :autocmd FileType mma :EnableNamedCharacters
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let s:NamedChars = {
	\ '\[AAcute]': 'á',
	\ '\[ABar]': 'ā',
	\ '\[ACup]': 'ă',
	\ '\[ADoubleDot]': 'ä',
	\ '\[AE]': 'æ',
	\ '\[AGrave]': 'à',
	\ '\[AHat]': 'â',
	\ '\[Aleph]': 'ℵ',
	\ '\[AliasDelimiter]': '',
	\ '\[AliasIndicator]': '',
	\ '\[AlignmentMarker]': '',
	\ '\[Alpha]': 'α',
	\ '\[AltKey]': '',
	\ '\[And]': '∧',
	\ '\[Angle]': '∠',
	\ '\[Angstrom]': 'Å',
	\ '\[AquariusSign]': '♒',
	\ '\[AriesSign]': '♈',
	\ '\[ARing]': 'å',
	\ '\[AscendingEllipsis]': '⋰',
	\ '\[ATilde]': 'ã',
	\ '\[AutoLeftMatch]': '',
	\ '\[AutoOperand]': '',
	\ '\[AutoPlaceholder]': '',
	\ '\[AutoRightMatch]': '',
	\ '\[AutoSpace]': '',
	\ '\[Backslash]': '∖',
	\ '\[BeamedEighthNote]': '♫',
	\ '\[BeamedSixteenthNote]': '♬',
	\ '\[Because]': '∵',
	\ '\[Bet]': 'ℶ',
	\ '\[Beta]': 'β',
	\ '\[BlackBishop]': '♝',
	\ '\[BlackKing]': '♚',
	\ '\[BlackKnight]': '♞',
	\ '\[BlackPawn]': '♟',
	\ '\[BlackQueen]': '♛',
	\ '\[BlackRook]': '♜',
	\ '\[Breve]': '˘',
	\ '\[Bullet]': '•',
	\ '\[CAcute]': 'ć',
	\ '\[CancerSign]': '♋',
	\ '\[Cap]': '⌢',
	\ '\[CapitalAAcute]': 'Á',
	\ '\[CapitalABar]': 'Ā',
	\ '\[CapitalACup]': 'Ă',
	\ '\[CapitalADoubleDot]': 'Ä',
	\ '\[CapitalAE]': 'Æ',
	\ '\[CapitalAGrave]': 'À',
	\ '\[CapitalAHat]': 'Â',
	\ '\[CapitalAlpha]': 'Α',
	\ '\[CapitalARing]': 'Å',
	\ '\[CapitalATilde]': 'Ã',
	\ '\[CapitalBeta]': 'Β',
	\ '\[CapitalCAcute]': 'Ć',
	\ '\[CapitalCCedilla]': 'Ç',
	\ '\[CapitalCHacek]': 'Č',
	\ '\[CapitalChi]': 'Χ',
	\ '\[CapitalDelta]': 'Δ',
	\ '\[CapitalDHacek]': 'Ď',
	\ '\[CapitalDifferentialD]': '',
	\ '\[CapitalDigamma]': 'Ϝ',
	\ '\[CapitalEAcute]': 'É',
	\ '\[CapitalEBar]': 'Ē',
	\ '\[CapitalECup]': 'Ĕ',
	\ '\[CapitalEDoubleDot]': 'Ë',
	\ '\[CapitalEGrave]': 'È',
	\ '\[CapitalEHacek]': 'Ě',
	\ '\[CapitalEHat]': 'Ê',
	\ '\[CapitalEpsilon]': 'Ε',
	\ '\[CapitalEta]': 'Η',
	\ '\[CapitalEth]': 'Ð',
	\ '\[CapitalGamma]': 'Γ',
	\ '\[CapitalIAcute]': 'Í',
	\ '\[CapitalICup]': 'Ĭ',
	\ '\[CapitalIDoubleDot]': 'Ï',
	\ '\[CapitalIGrave]': 'Ì',
	\ '\[CapitalIHat]': 'Î',
	\ '\[CapitalIota]': 'Ι',
	\ '\[CapitalKappa]': 'Κ',
	\ '\[CapitalKoppa]': 'Ϟ',
	\ '\[CapitalLambda]': 'Λ',
	\ '\[CapitalLSlash]': 'Ł',
	\ '\[CapitalMu]': 'Μ',
	\ '\[CapitalNHacek]': 'Ň',
	\ '\[CapitalNTilde]': 'Ñ',
	\ '\[CapitalNu]': 'Ν',
	\ '\[CapitalOAcute]': 'Ó',
	\ '\[CapitalODoubleAcute]': 'Ő',
	\ '\[CapitalODoubleDot]': 'Ö',
	\ '\[CapitalOE]': 'Œ',
	\ '\[CapitalOGrave]': 'Ò',
	\ '\[CapitalOHat]': 'Ô',
	\ '\[CapitalOmega]': 'Ω',
	\ '\[CapitalOmicron]': 'Ο',
	\ '\[CapitalOSlash]': 'Ø',
	\ '\[CapitalOTilde]': 'Õ',
	\ '\[CapitalPhi]': 'Φ',
	\ '\[CapitalPi]': 'Π',
	\ '\[CapitalPsi]': 'Ψ',
	\ '\[CapitalRHacek]': 'Ř',
	\ '\[CapitalRho]': 'Ρ',
	\ '\[CapitalSampi]': 'Ϡ',
	\ '\[CapitalSHacek]': 'Š',
	\ '\[CapitalSigma]': 'Σ',
	\ '\[CapitalStigma]': 'Ϛ',
	\ '\[CapitalTau]': 'Τ',
	\ '\[CapitalTHacek]': 'Ť',
	\ '\[CapitalTheta]': 'Θ',
	\ '\[CapitalThorn]': 'Þ',
	\ '\[CapitalUAcute]': 'Ú',
	\ '\[CapitalUDoubleAcute]': 'Ű',
	\ '\[CapitalUDoubleDot]': 'Ü',
	\ '\[CapitalUGrave]': 'Ù',
	\ '\[CapitalUHat]': 'Û',
	\ '\[CapitalUpsilon]': 'Υ',
	\ '\[CapitalURing]': 'Ů',
	\ '\[CapitalXi]': 'Ξ',
	\ '\[CapitalYAcute]': 'Ý',
	\ '\[CapitalZeta]': 'Ζ',
	\ '\[CapitalZHacek]': 'Ž',
	\ '\[CapricornSign]': '♑',
	\ '\[CCedilla]': 'ç',
	\ '\[Cedilla]': '¸',
	\ '\[Cent]': '¢',
	\ '\[CenterDot]': '·',
	\ '\[CenterEllipsis]': '⋯',
	\ '\[CHacek]': 'č',
	\ '\[CheckedBox]': '☒',
	\ '\[Checkmark]': '✓',
	\ '\[Chi]': 'χ',
	\ '\[CircleDot]': '⊙',
	\ '\[CircleMinus]': '⊖',
	\ '\[CirclePlus]': '⊕',
	\ '\[CircleTimes]': '⊗',
	\ '\[ClockwiseContourIntegral]': '∲',
	\ '\[CloseCurlyDoubleQuote]': '”',
	\ '\[CloseCurlyQuote]': '’',
	\ '\[CloverLeaf]': '⌘',
	\ '\[ClubSuit]': '♣',
	\ '\[Colon]': '∶',
	\ '\[CommandKey]': '',
	\ '\[Conditioned]': '༽',
	\ '\[Congruent]': '≡',
	\ '\[Conjugate]': '',
	\ '\[ConjugateTranspose]': '',
	\ '\[ConstantC]': '',
	\ '\[Continuation]': '',
	\ '\[ContourIntegral]': '∮',
	\ '\[ControlKey]': '',
	\ '\[Coproduct]': '∐',
	\ '\[Copyright]': '©',
	\ '\[CounterClockwiseContourIntegral]': '∳',
	\ '\[Cross]': '',
	\ '\[Cup]': '⌣',
	\ '\[CupCap]': '≍',
	\ '\[CurlyCapitalUpsilon]': 'ϒ',
	\ '\[CurlyEpsilon]': 'ε',
	\ '\[CurlyKappa]': 'ϰ',
	\ '\[CurlyPhi]': 'φ',
	\ '\[CurlyPi]': 'ϖ',
	\ '\[CurlyRho]': 'ϱ',
	\ '\[CurlyTheta]': 'ϑ',
	\ '\[Currency]': '¤',
	\ '\[Dagger]': '†',
	\ '\[Dalet]': 'ℸ',
	\ '\[Dash]': '–',
	\ '\[Degree]': '°',
	\ '\[Del]': '∇',
	\ '\[DeleteKey]': '',
	\ '\[Delta]': 'δ',
	\ '\[DescendingEllipsis]': '⋱',
	\ '\[DHacek]': 'ď',
	\ '\[Diameter]': '⌀',
	\ '\[Diamond]': '⋄',
	\ '\[DiamondSuit]': '♢',
	\ '\[DifferenceDelta]': '∆',
	\ '\[DifferentialD]': '',
	\ '\[Digamma]': 'ϝ',
	\ '\[DirectedEdge]': '༽',
	\ '\[DiscreteRatio]': '',
	\ '\[DiscreteShift]': '',
	\ '\[DiscretionaryHyphen]': '­',
	\ '\[DiscretionaryLineSeparator]': '',
	\ '\[DiscretionaryPageBreakAbove]': '',
	\ '\[DiscretionaryPageBreakBelow]': '',
	\ '\[DiscretionaryParagraphSeparator]': '',
	\ '\[Distributed]': '༽',
	\ '\[Divide]': '÷',
	\ '\[Divides]': '∣',
	\ '\[DotEqual]': '≐',
	\ '\[DotlessI]': 'ı',
	\ '\[DotlessJ]': '',
	\ '\[DottedSquare]': '',
	\ '\[DoubleContourIntegral]': '∯',
	\ '\[DoubleDagger]': '‡',
	\ '\[DoubledGamma]': '',
	\ '\[DoubleDot]': '¨',
	\ '\[DoubleDownArrow]': '⇓',
	\ '\[DoubledPi]': '',
	\ '\[DoubleLeftArrow]': '⇐',
	\ '\[DoubleLeftRightArrow]': '⇔',
	\ '\[DoubleLeftTee]': '⫤',
	\ '\[DoubleLongLeftArrow]': '⟸',
	\ '\[DoubleLongLeftRightArrow]': '⟺',
	\ '\[DoubleLongRightArrow]': '⟹',
	\ '\[DoublePrime]': '″',
	\ '\[DoubleRightArrow]': '⇒',
	\ '\[DoubleRightTee]': '⊨',
	\ '\[DoubleStruckA]': '',
	\ '\[DoubleStruckB]': '',
	\ '\[DoubleStruckC]': '',
	\ '\[DoubleStruckCapitalA]': '',
	\ '\[DoubleStruckCapitalB]': '',
	\ '\[DoubleStruckCapitalC]': '',
	\ '\[DoubleStruckCapitalD]': '',
	\ '\[DoubleStruckCapitalE]': '',
	\ '\[DoubleStruckCapitalF]': '',
	\ '\[DoubleStruckCapitalG]': '',
	\ '\[DoubleStruckCapitalH]': '',
	\ '\[DoubleStruckCapitalI]': '',
	\ '\[DoubleStruckCapitalJ]': '',
	\ '\[DoubleStruckCapitalK]': '',
	\ '\[DoubleStruckCapitalL]': '',
	\ '\[DoubleStruckCapitalM]': '',
	\ '\[DoubleStruckCapitalN]': '',
	\ '\[DoubleStruckCapitalO]': '',
	\ '\[DoubleStruckCapitalP]': '',
	\ '\[DoubleStruckCapitalQ]': '',
	\ '\[DoubleStruckCapitalR]': '',
	\ '\[DoubleStruckCapitalS]': '',
	\ '\[DoubleStruckCapitalT]': '',
	\ '\[DoubleStruckCapitalU]': '',
	\ '\[DoubleStruckCapitalV]': '',
	\ '\[DoubleStruckCapitalW]': '',
	\ '\[DoubleStruckCapitalX]': '',
	\ '\[DoubleStruckCapitalY]': '',
	\ '\[DoubleStruckCapitalZ]': '',
	\ '\[DoubleStruckD]': '',
	\ '\[DoubleStruckE]': '',
	\ '\[DoubleStruckEight]': '',
	\ '\[DoubleStruckF]': '',
	\ '\[DoubleStruckFive]': '',
	\ '\[DoubleStruckFour]': '',
	\ '\[DoubleStruckG]': '',
	\ '\[DoubleStruckH]': '',
	\ '\[DoubleStruckI]': '',
	\ '\[DoubleStruckJ]': '',
	\ '\[DoubleStruckK]': '',
	\ '\[DoubleStruckL]': '',
	\ '\[DoubleStruckM]': '',
	\ '\[DoubleStruckN]': '',
	\ '\[DoubleStruckNine]': '',
	\ '\[DoubleStruckO]': '',
	\ '\[DoubleStruckOne]': '',
	\ '\[DoubleStruckP]': '',
	\ '\[DoubleStruckQ]': '',
	\ '\[DoubleStruckR]': '',
	\ '\[DoubleStruckS]': '',
	\ '\[DoubleStruckSeven]': '',
	\ '\[DoubleStruckSix]': '',
	\ '\[DoubleStruckT]': '',
	\ '\[DoubleStruckThree]': '',
	\ '\[DoubleStruckTwo]': '',
	\ '\[DoubleStruckU]': '',
	\ '\[DoubleStruckV]': '',
	\ '\[DoubleStruckW]': '',
	\ '\[DoubleStruckX]': '',
	\ '\[DoubleStruckY]': '',
	\ '\[DoubleStruckZ]': '',
	\ '\[DoubleStruckZero]': '',
	\ '\[DoubleUpArrow]': '⇑',
	\ '\[DoubleUpDownArrow]': '⇕',
	\ '\[DoubleVerticalBar]': '∥',
	\ '\[DownArrow]': '↓',
	\ '\[DownArrowBar]': '⤓',
	\ '\[DownArrowUpArrow]': '⇵',
	\ '\[DownBreve]': '',
	\ '\[DownExclamation]': '¡',
	\ '\[DownLeftRightVector]': '⥐',
	\ '\[DownLeftTeeVector]': '⥞',
	\ '\[DownLeftVector]': '↽',
	\ '\[DownLeftVectorBar]': '⥖',
	\ '\[DownPointer]': '▾',
	\ '\[DownQuestion]': '¿',
	\ '\[DownRightTeeVector]': '⥟',
	\ '\[DownRightVector]': '⇁',
	\ '\[DownRightVectorBar]': '⥗',
	\ '\[DownTee]': '⊤',
	\ '\[DownTeeArrow]': '↧',
	\ '\[EAcute]': 'é',
	\ '\[Earth]': '♁',
	\ '\[EBar]': 'ē',
	\ '\[ECup]': 'ĕ',
	\ '\[EDoubleDot]': 'ë',
	\ '\[EGrave]': 'è',
	\ '\[EHacek]': 'ě',
	\ '\[EHat]': 'ê',
	\ '\[EighthNote]': '♪',
	\ '\[Element]': '∈',
	\ '\[Ellipsis]': '…',
	\ '\[EmptyCircle]': '○',
	\ '\[EmptyDiamond]': '◇',
	\ '\[EmptyDownTriangle]': '▽',
	\ '\[EmptyRectangle]': '▯',
	\ '\[EmptySet]': '∅',
	\ '\[EmptySmallCircle]': '◦',
	\ '\[EmptySmallSquare]': '◻',
	\ '\[EmptySquare]': '□',
	\ '\[EmptyUpTriangle]': '△',
	\ '\[EmptyVerySmallSquare]': '▫',
	\ '\[EnterKey]': '',
	\ '\[EntityEnd]': '',
	\ '\[EntityStart]': '',
	\ '\[Epsilon]': 'ϵ',
	\ '\[Equal]': '',
	\ '\[EqualTilde]': '≂',
	\ '\[Equilibrium]': '⇌',
	\ '\[Equivalent]': '⧦',
	\ '\[ErrorIndicator]': '',
	\ '\[EscapeKey]': '',
	\ '\[Eta]': 'η',
	\ '\[Eth]': 'ð',
	\ '\[Euro]': '€',
	\ '\[Exists]': '∃',
	\ '\[ExponentialE]': '',
	\ '\[FiLigature]': 'ﬁ',
	\ '\[FilledCircle]': '●',
	\ '\[FilledDiamond]': '◆',
	\ '\[FilledDownTriangle]': '▼',
	\ '\[FilledLeftTriangle]': '◀',
	\ '\[FilledRectangle]': '▮',
	\ '\[FilledRightTriangle]': '▶',
	\ '\[FilledSmallCircle]': '',
	\ '\[FilledSmallSquare]': '◼',
	\ '\[FilledSquare]': '■',
	\ '\[FilledUpTriangle]': '▲',
	\ '\[FilledVerySmallSquare]': '▪',
	\ '\[FinalSigma]': 'ς',
	\ '\[FirstPage]': '',
	\ '\[FivePointedStar]': '★',
	\ '\[Flat]': '♭',
	\ '\[FlLigature]': 'ﬂ',
	\ '\[Florin]': 'ƒ',
	\ '\[ForAll]': '∀',
	\ '\[FormalA]': '',
	\ '\[FormalAlpha]': '',
	\ '\[FormalB]': '',
	\ '\[FormalBeta]': '',
	\ '\[FormalC]': '',
	\ '\[FormalCapitalA]': '',
	\ '\[FormalCapitalAlpha]': '',
	\ '\[FormalCapitalB]': '',
	\ '\[FormalCapitalBeta]': '',
	\ '\[FormalCapitalC]': '',
	\ '\[FormalCapitalChi]': '',
	\ '\[FormalCapitalD]': '',
	\ '\[FormalCapitalDelta]': '',
	\ '\[FormalCapitalDigamma]': '',
	\ '\[FormalCapitalE]': '',
	\ '\[FormalCapitalEpsilon]': '',
	\ '\[FormalCapitalEta]': '',
	\ '\[FormalCapitalF]': '',
	\ '\[FormalCapitalG]': '',
	\ '\[FormalCapitalGamma]': '',
	\ '\[FormalCapitalH]': '',
	\ '\[FormalCapitalI]': '',
	\ '\[FormalCapitalIota]': '',
	\ '\[FormalCapitalJ]': '',
	\ '\[FormalCapitalK]': '',
	\ '\[FormalCapitalKappa]': '',
	\ '\[FormalCapitalKoppa]': '',
	\ '\[FormalCapitalL]': '',
	\ '\[FormalCapitalLambda]': '',
	\ '\[FormalCapitalM]': '',
	\ '\[FormalCapitalMu]': '',
	\ '\[FormalCapitalN]': '',
	\ '\[FormalCapitalNu]': '',
	\ '\[FormalCapitalO]': '',
	\ '\[FormalCapitalOmega]': '',
	\ '\[FormalCapitalOmicron]': '',
	\ '\[FormalCapitalP]': '',
	\ '\[FormalCapitalPhi]': '',
	\ '\[FormalCapitalPi]': '',
	\ '\[FormalCapitalPsi]': '',
	\ '\[FormalCapitalQ]': '',
	\ '\[FormalCapitalR]': '',
	\ '\[FormalCapitalRho]': '',
	\ '\[FormalCapitalS]': '',
	\ '\[FormalCapitalSampi]': '',
	\ '\[FormalCapitalSigma]': '',
	\ '\[FormalCapitalStigma]': '',
	\ '\[FormalCapitalT]': '',
	\ '\[FormalCapitalTau]': '',
	\ '\[FormalCapitalTheta]': '',
	\ '\[FormalCapitalU]': '',
	\ '\[FormalCapitalUpsilon]': '',
	\ '\[FormalCapitalV]': '',
	\ '\[FormalCapitalW]': '',
	\ '\[FormalCapitalX]': '',
	\ '\[FormalCapitalXi]': '',
	\ '\[FormalCapitalY]': '',
	\ '\[FormalCapitalZ]': '',
	\ '\[FormalCapitalZeta]': '',
	\ '\[FormalChi]': '',
	\ '\[FormalCurlyCapitalUpsilon]': '',
	\ '\[FormalCurlyEpsilon]': '',
	\ '\[FormalCurlyKappa]': '',
	\ '\[FormalCurlyPhi]': '',
	\ '\[FormalCurlyPi]': '',
	\ '\[FormalCurlyRho]': '',
	\ '\[FormalCurlyTheta]': '',
	\ '\[FormalD]': '',
	\ '\[FormalDelta]': '',
	\ '\[FormalDigamma]': '',
	\ '\[FormalE]': '',
	\ '\[FormalEpsilon]': '',
	\ '\[FormalEta]': '',
	\ '\[FormalF]': '',
	\ '\[FormalFinalSigma]': '',
	\ '\[FormalG]': '',
	\ '\[FormalGamma]': '',
	\ '\[FormalH]': '',
	\ '\[FormalI]': '',
	\ '\[FormalIota]': '',
	\ '\[FormalJ]': '',
	\ '\[FormalK]': '',
	\ '\[FormalKappa]': '',
	\ '\[FormalKoppa]': '',
	\ '\[FormalL]': '',
	\ '\[FormalLambda]': '',
	\ '\[FormalM]': '',
	\ '\[FormalMu]': '',
	\ '\[FormalN]': '',
	\ '\[FormalNu]': '',
	\ '\[FormalO]': '',
	\ '\[FormalOmega]': '',
	\ '\[FormalOmicron]': '',
	\ '\[FormalP]': '',
	\ '\[FormalPhi]': '',
	\ '\[FormalPi]': '',
	\ '\[FormalPsi]': '',
	\ '\[FormalQ]': '',
	\ '\[FormalR]': '',
	\ '\[FormalRho]': '',
	\ '\[FormalS]': '',
	\ '\[FormalSampi]': '',
	\ '\[FormalSigma]': '',
	\ '\[FormalStigma]': '',
	\ '\[FormalT]': '',
	\ '\[FormalTau]': '',
	\ '\[FormalTheta]': '',
	\ '\[FormalU]': '',
	\ '\[FormalUpsilon]': '',
	\ '\[FormalV]': '',
	\ '\[FormalW]': '',
	\ '\[FormalX]': '',
	\ '\[FormalXi]': '',
	\ '\[FormalY]': '',
	\ '\[FormalZ]': '',
	\ '\[FormalZeta]': '',
	\ '\[FreakedSmiley]': '',
	\ '\[Function]': '',
	\ '\[Gamma]': 'γ',
	\ '\[GeminiSign]': '♊',
	\ '\[Gimel]': 'ℷ',
	\ '\[GothicA]': '',
	\ '\[GothicB]': '',
	\ '\[GothicC]': '',
	\ '\[GothicCapitalA]': '',
	\ '\[GothicCapitalB]': '',
	\ '\[GothicCapitalC]': 'ℭ',
	\ '\[GothicCapitalD]': '',
	\ '\[GothicCapitalE]': '',
	\ '\[GothicCapitalF]': '',
	\ '\[GothicCapitalG]': '',
	\ '\[GothicCapitalH]': 'ℌ',
	\ '\[GothicCapitalI]': 'ℑ',
	\ '\[GothicCapitalJ]': '',
	\ '\[GothicCapitalK]': '',
	\ '\[GothicCapitalL]': '',
	\ '\[GothicCapitalM]': '',
	\ '\[GothicCapitalN]': '',
	\ '\[GothicCapitalO]': '',
	\ '\[GothicCapitalP]': '',
	\ '\[GothicCapitalQ]': '',
	\ '\[GothicCapitalR]': 'ℜ',
	\ '\[GothicCapitalS]': '',
	\ '\[GothicCapitalT]': '',
	\ '\[GothicCapitalU]': '',
	\ '\[GothicCapitalV]': '',
	\ '\[GothicCapitalW]': '',
	\ '\[GothicCapitalX]': '',
	\ '\[GothicCapitalY]': '',
	\ '\[GothicCapitalZ]': 'ℨ',
	\ '\[GothicD]': '',
	\ '\[GothicE]': '',
	\ '\[GothicEight]': '',
	\ '\[GothicF]': '',
	\ '\[GothicFive]': '',
	\ '\[GothicFour]': '',
	\ '\[GothicG]': '',
	\ '\[GothicH]': '',
	\ '\[GothicI]': '',
	\ '\[GothicJ]': '',
	\ '\[GothicK]': '',
	\ '\[GothicL]': '',
	\ '\[GothicM]': '',
	\ '\[GothicN]': '',
	\ '\[GothicNine]': '',
	\ '\[GothicO]': '',
	\ '\[GothicOne]': '',
	\ '\[GothicP]': '',
	\ '\[GothicQ]': '',
	\ '\[GothicR]': '',
	\ '\[GothicS]': '',
	\ '\[GothicSeven]': '',
	\ '\[GothicSix]': '',
	\ '\[GothicT]': '',
	\ '\[GothicThree]': '',
	\ '\[GothicTwo]': '',
	\ '\[GothicU]': '',
	\ '\[GothicV]': '',
	\ '\[GothicW]': '',
	\ '\[GothicX]': '',
	\ '\[GothicY]': '',
	\ '\[GothicZ]': '',
	\ '\[GothicZero]': '',
	\ '\[GrayCircle]': '',
	\ '\[GraySquare]': '',
	\ '\[GreaterEqual]': '≥',
	\ '\[GreaterEqualLess]': '⋛',
	\ '\[GreaterFullEqual]': '≧',
	\ '\[GreaterGreater]': '≫',
	\ '\[GreaterLess]': '≷',
	\ '\[GreaterSlantEqual]': '⩾',
	\ '\[GreaterTilde]': '≳',
	\ '\[Hacek]': 'ˇ',
	\ '\[HappySmiley]': '☺',
	\ '\[HBar]': 'ℏ',
	\ '\[HeartSuit]': '♡',
	\ '\[HermitianConjugate]': '',
	\ '\[HorizontalLine]': '─',
	\ '\[HumpDownHump]': '≎',
	\ '\[HumpEqual]': '≏',
	\ '\[Hyphen]': '‐',
	\ '\[IAcute]': 'í',
	\ '\[ICup]': 'ĭ',
	\ '\[IDoubleDot]': 'ï',
	\ '\[IGrave]': 'ì',
	\ '\[IHat]': 'î',
	\ '\[ImaginaryI]': '',
	\ '\[ImaginaryJ]': '',
	\ '\[ImplicitPlus]': '',
	\ '\[Implies]': '',
	\ '\[IndentingNewLine]': '',
	\ '\[Infinity]': '∞',
	\ '\[Integral]': '∫',
	\ '\[Intersection]': '⋂',
	\ '\[InvisibleApplication]': '',
	\ '\[InvisibleComma]': '',
	\ '\[InvisiblePostfixScriptBase]': '',
	\ '\[InvisiblePrefixScriptBase]': '',
	\ '\[InvisibleSpace]': '',
	\ '\[InvisibleTimes]': '⁢',
	\ '\[Iota]': 'ι',
	\ '\[Jupiter]': '♃',
	\ '\[Kappa]': 'κ',
	\ '\[KernelIcon]': '',
	\ '\[Koppa]': 'ϟ',
	\ '\[Lambda]': 'λ',
	\ '\[LastPage]': '',
	\ '\[LeftAngleBracket]': '〈',
	\ '\[LeftArrow]': '←',
	\ '\[LeftArrowBar]': '⇤',
	\ '\[LeftArrowRightArrow]': '⇆',
	\ '\[LeftAssociation]': '',
	\ '\[LeftBracketingBar]': '',
	\ '\[LeftCeiling]': '⌈',
	\ '\[LeftDoubleBracket]': '〚',
	\ '\[LeftDoubleBracketingBar]': '',
	\ '\[LeftDownTeeVector]': '⥡',
	\ '\[LeftDownVector]': '⇃',
	\ '\[LeftDownVectorBar]': '⥙',
	\ '\[LeftFloor]': '⌊',
	\ '\[LeftGuillemet]': '«',
	\ '\[LeftModified]': '',
	\ '\[LeftPointer]': '◂',
	\ '\[LeftRightArrow]': '↔',
	\ '\[LeftRightVector]': '⥎',
	\ '\[LeftSkeleton]': '',
	\ '\[LeftTee]': '⊣',
	\ '\[LeftTeeArrow]': '↤',
	\ '\[LeftTeeVector]': '⥚',
	\ '\[LeftTriangle]': '⊲',
	\ '\[LeftTriangleBar]': '⧏',
	\ '\[LeftTriangleEqual]': '⊴',
	\ '\[LeftUpDownVector]': '⥑',
	\ '\[LeftUpTeeVector]': '⥠',
	\ '\[LeftUpVector]': '↿',
	\ '\[LeftUpVectorBar]': '⥘',
	\ '\[LeftVector]': '↼',
	\ '\[LeftVectorBar]': '⥒',
	\ '\[LeoSign]': '♌',
	\ '\[LessEqual]': '≤',
	\ '\[LessEqualGreater]': '⋚',
	\ '\[LessFullEqual]': '≦',
	\ '\[LessGreater]': '≶',
	\ '\[LessLess]': '≪',
	\ '\[LessSlantEqual]': '⩽',
	\ '\[LessTilde]': '≲',
	\ '\[LetterSpace]': '',
	\ '\[LibraSign]': '♎',
	\ '\[LightBulb]': '',
	\ '\[LineSeparator]': ' ',
	\ '\[LongDash]': '—',
	\ '\[LongEqual]': '',
	\ '\[LongLeftArrow]': '⟵',
	\ '\[LongLeftRightArrow]': '⟷',
	\ '\[LongRightArrow]': '⟶',
	\ '\[LowerLeftArrow]': '↙',
	\ '\[LowerRightArrow]': '↘',
	\ '\[LSlash]': 'ł',
	\ '\[Mars]': '♂',
	\ '\[MathematicaIcon]': '',
	\ '\[MeasuredAngle]': '∡',
	\ '\[MediumSpace]': ' ',
	\ '\[Mercury]': '☿',
	\ '\[Mho]': '℧',
	\ '\[Micro]': 'µ',
	\ '\[MinusPlus]': '∓',
	\ '\[Mu]': 'μ',
	\ '\[Nand]': '⊼',
	\ '\[Natural]': '♮',
	\ '\[NegativeMediumSpace]': '',
	\ '\[NegativeThickSpace]': '',
	\ '\[NegativeThinSpace]': '',
	\ '\[NegativeVeryThinSpace]': '',
	\ '\[Neptune]': '♆',
	\ '\[NestedGreaterGreater]': '⪢',
	\ '\[NestedLessLess]': '⪡',
	\ '\[NeutralSmiley]': '',
	\ '\[NewLine]': '<NL>',
	\ '\[NHacek]': 'ň',
	\ '\[NoBreak]': '⁠',
	\ '\[NonBreakingSpace]': ' ',
	\ '\[Nor]': '⊽',
	\ '\[Not]': '¬',
	\ '\[NotCongruent]': '≢',
	\ '\[NotCupCap]': '≭',
	\ '\[NotDoubleVerticalBar]': '∦',
	\ '\[NotElement]': '∉',
	\ '\[NotEqual]': '≠',
	\ '\[NotEqualTilde]': '',
	\ '\[NotExists]': '∄',
	\ '\[NotGreater]': '≯',
	\ '\[NotGreaterEqual]': '≱',
	\ '\[NotGreaterFullEqual]': '≩',
	\ '\[NotGreaterGreater]': '',
	\ '\[NotGreaterLess]': '≹',
	\ '\[NotGreaterSlantEqual]': '',
	\ '\[NotGreaterTilde]': '≵',
	\ '\[NotHumpDownHump]': '',
	\ '\[NotHumpEqual]': '',
	\ '\[NotLeftTriangle]': '⋪',
	\ '\[NotLeftTriangleBar]': '',
	\ '\[NotLeftTriangleEqual]': '⋬',
	\ '\[NotLess]': '≮',
	\ '\[NotLessEqual]': '≰',
	\ '\[NotLessFullEqual]': '≨',
	\ '\[NotLessGreater]': '≸',
	\ '\[NotLessLess]': '',
	\ '\[NotLessSlantEqual]': '',
	\ '\[NotLessTilde]': '≴',
	\ '\[NotNestedGreaterGreater]': '',
	\ '\[NotNestedLessLess]': '',
	\ '\[NotPrecedes]': '⊀',
	\ '\[NotPrecedesEqual]': '',
	\ '\[NotPrecedesSlantEqual]': '⋠',
	\ '\[NotPrecedesTilde]': '⋨',
	\ '\[NotReverseElement]': '∌',
	\ '\[NotRightTriangle]': '⋫',
	\ '\[NotRightTriangleBar]': '',
	\ '\[NotRightTriangleEqual]': '⋭',
	\ '\[NotSquareSubset]': '',
	\ '\[NotSquareSubsetEqual]': '⋢',
	\ '\[NotSquareSuperset]': '',
	\ '\[NotSquareSupersetEqual]': '⋣',
	\ '\[NotSubset]': '⊄',
	\ '\[NotSubsetEqual]': '⊈',
	\ '\[NotSucceeds]': '⊁',
	\ '\[NotSucceedsEqual]': '',
	\ '\[NotSucceedsSlantEqual]': '⋡',
	\ '\[NotSucceedsTilde]': '⋩',
	\ '\[NotSuperset]': '⊅',
	\ '\[NotSupersetEqual]': '⊉',
	\ '\[NotTilde]': '≁',
	\ '\[NotTildeEqual]': '≄',
	\ '\[NotTildeFullEqual]': '≇',
	\ '\[NotTildeTilde]': '≉',
	\ '\[NotVerticalBar]': '',
	\ '\[NTilde]': 'ñ',
	\ '\[Nu]': 'ν',
	\ '\[Null]': '',
	\ '\[NumberSign]': '',
	\ '\[OAcute]': 'ó',
	\ '\[ODoubleAcute]': 'ő',
	\ '\[ODoubleDot]': 'ö',
	\ '\[OE]': 'œ',
	\ '\[OGrave]': 'ò',
	\ '\[OHat]': 'ô',
	\ '\[Omega]': 'ω',
	\ '\[Omicron]': 'ο',
	\ '\[OpenCurlyDoubleQuote]': '“',
	\ '\[OpenCurlyQuote]': '‘',
	\ '\[OptionKey]': '',
	\ '\[Or]': '∨',
	\ '\[OSlash]': 'ø',
	\ '\[OTilde]': 'õ',
	\ '\[OverBrace]': '︷',
	\ '\[OverBracket]': '⎴',
	\ '\[OverParenthesis]': '︵',
	\ '\[Paragraph]': '¶',
	\ '\[ParagraphSeparator]': ' ',
	\ '\[PartialD]': '∂',
	\ '\[PermutationProduct]': '',
	\ '\[Phi]': 'ϕ',
	\ '\[Pi]': 'π',
	\ '\[Piecewise]': '',
	\ '\[PiscesSign]': '♓',
	\ '\[Placeholder]': '',
	\ '\[PlusMinus]': '±',
	\ '\[Pluto]': '♇',
	\ '\[Precedes]': '≺',
	\ '\[PrecedesEqual]': '⪯',
	\ '\[PrecedesSlantEqual]': '≼',
	\ '\[PrecedesTilde]': '≾',
	\ '\[Prime]': '′',
	\ '\[Product]': '∏',
	\ '\[Proportion]': '∷',
	\ '\[Proportional]': '∝',
	\ '\[Psi]': 'ψ',
	\ '\[QuarterNote]': '♩',
	\ '\[RawAmpersand]': '&',
	\ '\[RawAt]': '@',
	\ '\[RawBackquote]': '`',
	\ '\[RawBackslash]': '\',
	\ '\[RawColon]': ':',
	\ '\[RawComma]': ',',
	\ '\[RawDash]': '-',
	\ '\[RawDollar]': '$',
	\ '\[RawDot]': '.',
	\ '\[RawDoubleQuote]': '"',
	\ '\[RawEqual]': '=',
	\ '\[RawEscape]': '',
	\ '\[RawExclamation]': '!',
	\ '\[RawGreater]': '>',
	\ '\[RawLeftBrace]': '{',
	\ '\[RawLeftBracket]': '[',
	\ '\[RawLeftParenthesis]': '(',
	\ '\[RawLess]': '<',
	\ '\[RawNumberSign]': '#',
	\ '\[RawPercent]': '%',
	\ '\[RawPlus]': '+',
	\ '\[RawQuestion]': '?',
	\ '\[RawQuote]': "'",
	\ '\[RawReturn]': '',
	\ '\[RawRightBrace]': '}',
	\ '\[RawRightBracket]': ']',
	\ '\[RawRightParenthesis]': ')',
	\ '\[RawSemicolon]': ';',
	\ '\[RawSlash]': '/',
	\ '\[RawSpace]': '<SPACE>',
	\ '\[RawStar]': '*',
	\ '\[RawTab]': '<TAB>',
	\ '\[RawTilde]': '~',
	\ '\[RawUnderscore]': '_',
	\ '\[RawVerticalBar]': '<BAR>',
	\ '\[RawWedge]': '^',
	\ '\[RegisteredTrademark]': '®',
	\ '\[ReturnIndicator]': '↵',
	\ '\[ReturnKey]': '',
	\ '\[ReverseDoublePrime]': '‶',
	\ '\[ReverseElement]': '∋',
	\ '\[ReverseEquilibrium]': '⇋',
	\ '\[ReversePrime]': '‵',
	\ '\[ReverseUpEquilibrium]': '⥯',
	\ '\[RHacek]': 'ř',
	\ '\[Rho]': 'ρ',
	\ '\[RightAngle]': '∟',
	\ '\[RightAngleBracket]': '〉',
	\ '\[RightArrow]': '→',
	\ '\[RightArrowBar]': '⇥',
	\ '\[RightArrowLeftArrow]': '⇄',
	\ '\[RightAssociation]': '',
	\ '\[RightBracketingBar]': '',
	\ '\[RightCeiling]': '⌉',
	\ '\[RightDoubleBracket]': '〛',
	\ '\[RightDoubleBracketingBar]': '',
	\ '\[RightDownTeeVector]': '⥝',
	\ '\[RightDownVector]': '⇂',
	\ '\[RightDownVectorBar]': '⥕',
	\ '\[RightFloor]': '⌋',
	\ '\[RightGuillemet]': '»',
	\ '\[RightModified]': '',
	\ '\[RightPointer]': '▸',
	\ '\[RightSkeleton]': '',
	\ '\[RightTee]': '⊢',
	\ '\[RightTeeArrow]': '↦',
	\ '\[RightTeeVector]': '⥛',
	\ '\[RightTriangle]': '⊳',
	\ '\[RightTriangleBar]': '⧐',
	\ '\[RightTriangleEqual]': '⊵',
	\ '\[RightUpDownVector]': '⥏',
	\ '\[RightUpTeeVector]': '⥜',
	\ '\[RightUpVector]': '↾',
	\ '\[RightUpVectorBar]': '⥔',
	\ '\[RightVector]': '⇀',
	\ '\[RightVectorBar]': '⥓',
	\ '\[RoundImplies]': '⥰',
	\ '\[RoundSpaceIndicator]': '',
	\ '\[Rule]': '',
	\ '\[RuleDelayed]': '',
	\ '\[SadSmiley]': '☹',
	\ '\[SagittariusSign]': '♐',
	\ '\[Sampi]': 'Ϡ',
	\ '\[Saturn]': '♄',
	\ '\[ScorpioSign]': '♏',
	\ '\[ScriptA]': '',
	\ '\[ScriptB]': '',
	\ '\[ScriptC]': '',
	\ '\[ScriptCapitalA]': '',
	\ '\[ScriptCapitalB]': 'ℬ',
	\ '\[ScriptCapitalC]': '',
	\ '\[ScriptCapitalD]': '',
	\ '\[ScriptCapitalE]': 'ℰ',
	\ '\[ScriptCapitalF]': 'ℱ',
	\ '\[ScriptCapitalG]': '',
	\ '\[ScriptCapitalH]': 'ℋ',
	\ '\[ScriptCapitalI]': 'ℐ',
	\ '\[ScriptCapitalJ]': '',
	\ '\[ScriptCapitalK]': '',
	\ '\[ScriptCapitalL]': 'ℒ',
	\ '\[ScriptCapitalM]': 'ℳ',
	\ '\[ScriptCapitalN]': '',
	\ '\[ScriptCapitalO]': '',
	\ '\[ScriptCapitalP]': '℘',
	\ '\[ScriptCapitalQ]': '',
	\ '\[ScriptCapitalR]': 'ℛ',
	\ '\[ScriptCapitalS]': '',
	\ '\[ScriptCapitalT]': '',
	\ '\[ScriptCapitalU]': '',
	\ '\[ScriptCapitalV]': '',
	\ '\[ScriptCapitalW]': '',
	\ '\[ScriptCapitalX]': '',
	\ '\[ScriptCapitalY]': '',
	\ '\[ScriptCapitalZ]': '',
	\ '\[ScriptD]': '',
	\ '\[ScriptDotlessI]': '',
	\ '\[ScriptDotlessJ]': '',
	\ '\[ScriptE]': 'ℯ',
	\ '\[ScriptEight]': '',
	\ '\[ScriptF]': '',
	\ '\[ScriptFive]': '',
	\ '\[ScriptFour]': '',
	\ '\[ScriptG]': 'ℊ',
	\ '\[ScriptH]': '',
	\ '\[ScriptI]': '',
	\ '\[ScriptJ]': '',
	\ '\[ScriptK]': '',
	\ '\[ScriptL]': 'ℓ',
	\ '\[ScriptM]': '',
	\ '\[ScriptN]': '',
	\ '\[ScriptNine]': '',
	\ '\[ScriptO]': 'ℴ',
	\ '\[ScriptOne]': '',
	\ '\[ScriptP]': '',
	\ '\[ScriptQ]': '',
	\ '\[ScriptR]': '',
	\ '\[ScriptS]': '',
	\ '\[ScriptSeven]': '',
	\ '\[ScriptSix]': '',
	\ '\[ScriptT]': '',
	\ '\[ScriptThree]': '',
	\ '\[ScriptTwo]': '',
	\ '\[ScriptU]': '',
	\ '\[ScriptV]': '',
	\ '\[ScriptW]': '',
	\ '\[ScriptX]': '',
	\ '\[ScriptY]': '',
	\ '\[ScriptZ]': '',
	\ '\[ScriptZero]': '',
	\ '\[Section]': '§',
	\ '\[SelectionPlaceholder]': '',
	\ '\[SHacek]': 'š',
	\ '\[Sharp]': '♯',
	\ '\[ShortDownArrow]': '',
	\ '\[ShortLeftArrow]': '',
	\ '\[ShortRightArrow]': '',
	\ '\[ShortUpArrow]': '',
	\ '\[Sigma]': 'σ',
	\ '\[SixPointedStar]': '✶',
	\ '\[SkeletonIndicator]': '⁃',
	\ '\[SmallCircle]': '∘',
	\ '\[SpaceIndicator]': '␣',
	\ '\[SpaceKey]': '',
	\ '\[SpadeSuit]': '♠',
	\ '\[SpanFromAbove]': '',
	\ '\[SpanFromBoth]': '',
	\ '\[SpanFromLeft]': '',
	\ '\[SphericalAngle]': '∢',
	\ '\[Sqrt]': '√',
	\ '\[Square]': '',
	\ '\[SquareIntersection]': '⊓',
	\ '\[SquareSubset]': '⊏',
	\ '\[SquareSubsetEqual]': '⊑',
	\ '\[SquareSuperset]': '⊐',
	\ '\[SquareSupersetEqual]': '⊒',
	\ '\[SquareUnion]': '⊔',
	\ '\[Star]': '⋆',
	\ '\[Sterling]': '£',
	\ '\[Stigma]': 'ϛ',
	\ '\[Subset]': '⊂',
	\ '\[SubsetEqual]': '⊆',
	\ '\[Succeeds]': '≻',
	\ '\[SucceedsEqual]': '⪰',
	\ '\[SucceedsSlantEqual]': '≽',
	\ '\[SucceedsTilde]': '≿',
	\ '\[SuchThat]': '∍',
	\ '\[Sum]': '∑',
	\ '\[Superset]': '⊃',
	\ '\[SupersetEqual]': '⊇',
	\ '\[SystemEnterKey]': '',
	\ '\[SystemsModelDelay]': '',
	\ '\[SZ]': 'ß',
	\ '\[TabKey]': '',
	\ '\[Tau]': 'τ',
	\ '\[TaurusSign]': '♉',
	\ '\[TensorProduct]': '',
	\ '\[TensorWedge]': '',
	\ '\[THacek]': 'ť',
	\ '\[Therefore]': '∴',
	\ '\[Theta]': 'θ',
	\ '\[ThickSpace]': ' ',
	\ '\[ThinSpace]': ' ',
	\ '\[Thorn]': 'þ',
	\ '\[Tilde]': '∼',
	\ '\[TildeEqual]': '≃',
	\ '\[TildeFullEqual]': '≅',
	\ '\[TildeTilde]': '≈',
	\ '\[Times]': '×',
	\ '\[Trademark]': '™',
	\ '\[Transpose]': '',
	\ '\[TripleDot]': '',
	\ '\[UAcute]': 'ú',
	\ '\[UDoubleAcute]': 'ű',
	\ '\[UDoubleDot]': 'ü',
	\ '\[UGrave]': 'ù',
	\ '\[UHat]': 'û',
	\ '\[UnderBrace]': '︸',
	\ '\[UnderBracket]': '⎵',
	\ '\[UnderParenthesis]': '︶',
	\ '\[UndirectedEdge]': '༽',
	\ '\[Union]': '⋃',
	\ '\[UnionPlus]': '⊎',
	\ '\[UpArrow]': '↑',
	\ '\[UpArrowBar]': '⤒',
	\ '\[UpArrowDownArrow]': '⇅',
	\ '\[UpDownArrow]': '↕',
	\ '\[UpEquilibrium]': '⥮',
	\ '\[UpperLeftArrow]': '↖',
	\ '\[UpperRightArrow]': '↗',
	\ '\[UpPointer]': '▴',
	\ '\[Upsilon]': 'υ',
	\ '\[UpTee]': '⊥',
	\ '\[UpTeeArrow]': '↥',
	\ '\[Uranus]': '♅',
	\ '\[URing]': 'ů',
	\ '\[Vee]': '⋁',
	\ '\[Venus]': '♀',
	\ '\[VerticalBar]': '',
	\ '\[VerticalEllipsis]': '⋮',
	\ '\[VerticalLine]': '│',
	\ '\[VerticalSeparator]': '',
	\ '\[VerticalTilde]': '≀',
	\ '\[VeryThinSpace]': ' ',
	\ '\[VirgoSign]': '♍',
	\ '\[WarningSign]': '',
	\ '\[WatchIcon]': '⌚',
	\ '\[Wedge]': '⋀',
	\ '\[WeierstrassP]': '℘',
	\ '\[WhiteBishop]': '♗',
	\ '\[WhiteKing]': '♔',
	\ '\[WhiteKnight]': '♘',
	\ '\[WhitePawn]': '♙',
	\ '\[WhiteQueen]': '♕',
	\ '\[WhiteRook]': '♖',
	\ '\[Wolf]': '',
	\ '\[WolframLanguageLogo]': '',
	\ '\[WolframLanguageLogoCircle]': '',
	\ '\[Xi]': 'ξ',
	\ '\[Xnor]': '',
	\ '\[Xor]': '⊻',
	\ '\[YAcute]': 'ý',
	\ '\[YDoubleDot]': 'ÿ',
	\ '\[Yen]': '¥',
	\ '\[Zeta]': 'ζ',
	\ '\[ZHacek]': 'ž',
\ }


function s:AddNamedChars()
	for l:name in keys(s:NamedChars)
		execute 'inoreabbrev <buffer> ' . l:name . ' ' . s:NamedChars[l:name]
	endfor
endfunction

function s:RemoveNamedChars()
	for l:name in keys(s:NamedChars)
		execute 'iunabbrev <buffer> ' . l:name
	endfor
endfunction


command -bar DisableNamedCharacters :call <sid>RemoveNamedChars()
command -bar EnableNamedCharacters :call <sid>AddNamedChars()
autocmd FileType mma :EnableNamedCharacters


" vim: noet
