<p align="center"><img src="icon.png" width="128" alt="PBCUT"></p>

# PBCUT

숏츠·릴스(세로), 유튜브 롱폼(가로), 광고·제품 영상을 만드는 맥용 무료 영상 편집기입니다.
자동 자막, 무음 자르기, 원클릭 숏츠 같은 AI 기능이 인터넷 없이 내 맥에서 돌아갑니다.

## 다운로드

**[최신 버전 받기 (Releases)](../../releases/latest)** → `PBCUT-x.y.z-arm64.dmg`

- Apple Silicon 맥(M1·M2·M3·M4 이상), macOS 12 이상
- 인텔 맥은 지원하지 않습니다

## 설치

1. DMG를 열고 **PBCUT**을 **응용 프로그램** 폴더로 끌어 놓습니다.
2. 처음 열 때 "확인되지 않은 개발자" 경고가 뜹니다(애플 유료 인증서로 서명하지 않은 앱이라 그렇습니다).
   - **시스템 설정 → 개인정보 보호 및 보안** 맨 아래에서 **그래도 열기**를 누르세요.
   - 또는 터미널에서 한 줄: `xattr -dr com.apple.quarantine /Applications/PBCUT.app`
3. 처음 자동 자막을 만들 때 음성 인식 모델(약 870MB)을 한 번만 내려받습니다. 그 뒤로는 인터넷이 필요 없습니다.

## 주요 기능

- **타임라인 편집**: 여러 트랙, 자르기·분할·잔물결 삭제, 스냅, 키프레임(위치·크기·회전·투명도·볼륨·흐림), 실행 취소
- **자동 자막**: 한국어 음성 인식 + 단어별 타이밍, 단어 하이라이트·카라오케 등 자막 스타일 16종, 문장 직접 수정
- **원클릭 숏츠**: 세로 전환 → 무음 자르기 → 얼굴 따라가기 리프레임 → 자막 → 훅 제목 → 배경음 자동 줄이기
- **오디오**: 볼륨 키프레임, 페이드, 잡음 제거, 음성 변조 8종, 한국어 TTS 내레이션, 배경음 자동 덕킹, -14 LUFS 음량 맞춤
- **영상**: 전환 12종, 효과 12종, 필터 16종, 색 보정, 크로마키, AI 배경 제거, 속도·역재생, 자르기·뒤집기
- **내보내기**: 720p~4K, 하드웨어 H.264, 9:16 · 16:9 · 1:1 · 4:5 · 3:4 · 21:9

## 알아 둘 점

- 캡컷의 스톡 음원·스티커·템플릿 라이브러리는 없습니다. 음원과 소스는 직접 가져와 쓰세요.
- 음성 인식은 가끔 틀립니다. 자막 탭에서 고치거나 자주 쓰는 용어를 인식 힌트 칸에 넣으면 줄어듭니다.
- TTS는 맥에 깔린 한국어 목소리를 씁니다. 목소리가 없으면 시스템 설정 → 손쉬운 사용 → 읽기 및 말하기에서 받으세요.
- AI 이미지·영상 생성 메뉴는 Higgsfield 계정과 CLI가 있어야 동작합니다(선택 기능).

## 사용한 오픈소스

- [FFmpeg](https://ffmpeg.org) — GPL-3.0, 정적 빌드 출처 [martin-riedl.de](https://ffmpeg.martin-riedl.de) (소스·빌드 스크립트 공개)
- [whisper.cpp](https://github.com/ggml-org/whisper.cpp) v1.9.1 (MIT), 모델 large-v3-turbo q8_0 · Silero VAD
- [Electron](https://www.electronjs.org) (MIT), [MediaPipe](https://github.com/google-ai-edge/mediapipe) (Apache-2.0), [Mediabunny](https://mediabunny.dev) (MPL-2.0)
- 글꼴: Pretendard, Black Han Sans, Gowun Batang (SIL OFL)
