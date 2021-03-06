
Z80 용 hForth 0.9.9 판입니다. 8086 hForth v0.9.9 RAM 모델을 새로
Z80에 옮겨 심었습니다. hForth는 ANS 포스 표준을 따르는 작은 포스
시스템입니다. hForth는 무료 프로그램(free software)입니다. 이것을 
개인적으로나 상업적으로나 어떤 목적에 사용해도 좋습니다. 단, 이 
프로그램을 바로 팔아서는 안되고 (hForth를 써서 만든 프로그램을 파는 
것은 제가 상관하지 않습니다) hForth라는 이름을 쓰려면 꾸러미의 
파일들이 본래 상태로 있어야 합니다. 가능한 한 hForth를 널리 퍼뜨려 
주십시오.

Z80 용 hForth 0.9.9 판 꾸러미에는 다음 파일들이 들어 있습니다.

HFZ80RAM.ASM  Z80 CP/M용 hForth RAM 모델의 MASM 바탕본.
HFZ80RAM.CPM  HFZ80RAM.ASM의 실행 파일.
HFZ80RAM.COM  HFZ80RAM.CPM을 도스의 22NICE CP/M 에뮬레이터로
              실행시키기 위한 시작 파일. (22NICE.COM이 있는
              디렉토리에서 실행하십시오.)
OPTIONAL.F    선택 낱말(OPTIONAL wordset words)들의 포스 바탕본.
COREEXT.F     ANS 표준 포스 프로그램에 쓰지 말아야 할 낡은 낱말을 뺀
              (OPTIONAL.F에 빠진) 다른 모든 CORE EXT 낱말의 포스 바탕본.
MULTI.F       Bill Muench의 다중작업기(multitasker)의 포스 바탕본.
MULDEMO.F     다중 작업기를 시험하기 위한 간단한 포스 바탕본.
DOUBLE.F      완전한 DOUBLE과 DOUBLE EXT 낱말의 정의.
DISCP.F       M. Edward Borasky의 Dijkstra guarded command control
              structures.
HFORTH.HTM    Forth Dimensions에 실렸던 hForth 소개글
README.KOR    이 파일 (조합형 한글).
README.KS     이 파일 (완성형 한글).
README86.KOR  8086 용 hForth 꾸러미의 README 파일 (조합형 한글).
README86.KS   8086 용 hForth 꾸러미의 README 파일 (완성형 한글).
22NCE142.ZIP  Sydex의 MS-DOS용 CP/M 에뮬레이터.

hForth Z80 RAM 모델은 hForth 8086 RAM 모델을 다음처럼 고쳐서
만들었습니다.

1. 부트 코드와 모든 기계어 정의를 Z80 기계어로 다시 정의했습니다.

2. 입출력 낱말인 RX?와 RX@와 TX!를 CP/M의 BDOS 함수를 써서 다시
   정의했습니다. 여기에 필요한 낱말 bdos와 keysave와 ?key를
   더했습니다. BYE도 CP/M에 맞게 다시 정의했습니다. MS-DOS에서만 쓸
   수 있는 낱말인 stdin과 << 등을 뺐습니다.

3. 상대 주소를 쓰는 8086과는 달리 Z80은 절대 주소를 쓰기 대문에
   ?call과 pipe와 xt,를 다시 정의했습니다.

4. 실행속도를 빠르게 하기 위해 8086 모델에서처럼 same?과
   (search-wordlist)를 기계어로 정의하고 Z80 모델에서는 UM/MOD도
   기계어로 정의했습니다.

hForth에 대한 더 자세한 소개는 README86.*과 HFORTH.HTM을
참조하십시오.

1997. 6. 5.

고원용
인터넷: wykoh@pado.krict.re.kr
하이텔: wykoh

