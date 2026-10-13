<p align="center"><img src="icon.png" width="128" alt="PBCUT"></p>

# PBCUT

숏츠·릴스(세로), 유튜브 롱폼(가로), 광고·제품 영상을 만드는 맥용 무료 영상 편집기입니다.
자동 자막, 보컬 분리, 얼굴 보정, 물체 추적 같은 AI 기능이 내 맥에서 돌아가고, 저작권 걱정 없는 음악·효과음이 들어 있습니다.

## 다운로드

**[최신 버전 받기 (Releases)](../../releases/latest)** → `PBCUT-x.y.z-arm64.dmg`

- Apple Silicon 맥(M1·M2·M3·M4 이상), macOS 12 이상. 인텔 맥은 지원하지 않습니다.

## 설치

1. DMG를 열고 **PBCUT**을 **응용 프로그램** 폴더로 끌어 놓습니다.
2. 처음 열 때 "확인되지 않은 개발자" 경고가 뜹니다(애플 유료 인증서로 서명하지 않은 앱이라 그렇습니다).
   - **시스템 설정 → 개인정보 보호 및 보안** 맨 아래에서 **그래도 열기**를 누르세요.
   - 또는 터미널에서 한 줄: `xattr -dr com.apple.quarantine /Applications/PBCUT.app`
3. AI 모델과 음악은 처음 쓸 때 한 번만 내려받습니다(음성 인식 약 870MB · 번역·문구 AI 약 2.5GB · 보컬 분리 약 40MB · 곡당 약 4MB). 그 뒤로는 인터넷이 필요 없습니다.

## 기능

| 분야 | 기능 |
|---|---|
| 타임라인 | 여러 트랙, 분할·리플 삭제, Q/W 왼쪽·오른쪽 지우기, 스냅, 메인 트랙 자석, 연결(위 클립 함께 이동), 마커, 클립 묶기(컴파운드), 실행 취소 |
| 키프레임 | 위치·크기·회전·투명도·볼륨·흐림, 움직임 곡선(일정·천천히 시작/끝·부드럽게·멈춤) |
| 속도 | 배속 0.1~8x, 역재생, 속도 곡선(몽타주·히어로·불릿 타임 등 8종 + 직접 그리기), 정지 화면, 부드러운 슬로모션(광학 흐름) |
| 화면 | 마스크 6종(선형·거울·원·사각·하트·별, 흐림·반전), 혼합 모드 16종, 크로마키, AI 배경 제거, 자르기·뒤집기, 반복 애니메이션 10종 |
| 색 | 필터 35종, 밝기·대비·채도·색온도·비네팅·그레인, HSL 8색, 톤 곡선(RGB), 컬러 휠, LUT(.cube) 가져오기, 다른 클립 색 맞추기 |
| 얼굴·조명 | 피부 매끈·밝게·치아 미백·입술 색·볼 터치(AI 얼굴 인식), 조명 다시 비추기 6종 |
| 영상 처리 | 흔들림 보정, 모션 블러, 화질 향상, 2배 고해상도 변환, 깜빡임 제거, 장면 자동 나누기 |
| 전환·효과 | 전환 25종, 효과 25종(라이트 릭·보케·눈·비·하트·필름 먼지·글리치·VHS 등) |
| 텍스트 | 텍스트 스타일 50종, 텍스트 템플릿 40종(제목·하단 자막·강조·리스트·쇼핑·엔딩·방송), 한글 무료 글꼴 25종, 외곽선·박스·그림자·네온 빛, 글자 휘기, 등장·퇴장·반복 애니메이션 |
| 스티커 | 움직이는 스티커 28종(구독 클릭·좋아요·카운트다운·꽃가루·불꽃놀이·LIVE·REC 등), 3D 이모지 1,595종, 빛·파티클·이모트·아이콘 425종, 한글 검색 |
| 자막 | 한국어 자동 자막(단어별 타이밍·말하는 단어 강조·핵심어 강조), 자막 번역 13개 언어(내 맥 AI·문맥·용어집), 이중 자막·번역 자막, SRT·LRC·TXT 내보내기, SRT 가져오기 |
| AI 문구 | 훅 제목·유튜브 제목·업로드 설명·해시태그·대본 다듬기·구독 유도 문구(내 맥에서 무료) |
| AI 편집 | 원클릭 숏츠, 긴 영상에서 하이라이트 찾기, 무음 자르기, 군말(음·어) 지우기, 얼굴 따라 세로 리프레임, 물체 따라가기(트래킹), 비트 마커, 소리로 맞추기(멀티캠) |
| 오디오 | 볼륨 키프레임·페이드, 잡음 제거, 음성 강화, **보컬 분리**(목소리/배경음), 음성 변조 8종, 배경음 자동 덕킹, -14 LUFS 음량 맞춤, 오디오 분리, 내레이션 녹음(대본 보기), 한국어 TTS |
| 자료 | CC0 음악 129곡(6가지 분위기), 효과음 640개, 영상 스타일 템플릿 40종(운동·뷰티·음식·여행·쇼핑·교육·브이로그·게임 등), 화면 녹화 |
| 내보내기 | MP4(H.264·HEVC) 720p~4K, GIF, MP3·M4A·WAV, 선택 구간만 내보내기 |
| AI 생성(선택) | 문장→이미지·영상, 사진→움직이는 영상(Higgsfield 계정·크레딧 필요) |

## 알아 둘 점

- 번역·문구 AI 는 내 맥 GPU 에서 돕니다(처음 한 번 약 2.5GB). 전문 용어는 「자주 나오는 단어」 칸에 적으면 용어집으로 씁니다.
- 캡컷의 클라우드 기능(AI 아바타·립싱크·영상 더빙)과 매주 늘어나는 온라인 템플릿 상점은 없습니다.
- TTS 는 맥에 깔린 한국어 목소리를 씁니다. 없으면 시스템 설정 → 손쉬운 사용 → 읽기 및 말하기에서 받으세요.

## 저작권·사용한 오픈소스

- 음악: [HoliznaCC0](https://freemusicarchive.org/music/holiznacc0/) 곡 129개, 모두 CC0(곡마다 원본 페이지 확인, [목록](../../releases/tag/library-v1))
- 효과음: [Kenney](https://kenney.nl) 오디오 팩(CC0) + PBCUT 자체 합성음
- 글꼴: Pretendard, Noto Sans/Serif KR, 나눔 글꼴, Gothic A1, IBM Plex Sans KR, Black Han Sans, Do Hyeon, Jua 외(모두 SIL OFL)
- [FFmpeg](https://ffmpeg.org) GPL-3.0(정적 빌드 [martin-riedl.de](https://ffmpeg.martin-riedl.de)) · [whisper.cpp](https://github.com/ggml-org/whisper.cpp) MIT · Silero VAD MIT
- 스티커: [Microsoft Fluent Emoji](https://github.com/microsoft/fluentui-emoji) MIT · [Kenney](https://kenney.nl) 파티클·이모트·아이콘 CC0 · PBCUT 자체 제작
- 번역·문구 AI: [Qwen3-4B-Instruct-2507](https://huggingface.co/Qwen/Qwen3-4B-Instruct-2507) Apache-2.0(GGUF 변환 unsloth) · [llama.cpp](https://github.com/ggml-org/llama.cpp) MIT
- [MediaPipe](https://github.com/google-ai-edge/mediapipe) Apache-2.0 · [Spleeter](https://github.com/deezer/spleeter) MIT(ONNX 변환 [sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx)) · [Opus-MT ko-en](https://huggingface.co/Helsinki-NLP/opus-mt-ko-en) Apache-2.0
- [Electron](https://www.electronjs.org) MIT · [ONNX Runtime](https://onnxruntime.ai) MIT · [Transformers.js](https://github.com/huggingface/transformers.js) Apache-2.0 · [Mediabunny](https://mediabunny.dev) MPL-2.0
