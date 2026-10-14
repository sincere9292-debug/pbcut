# 캡컷 9.4.4583 기능 대조 (2026-10-14)

근거: `/Applications/CapCut.app/Contents/Resources/po/en.po`·`ko-KR.po` 의 화면 문구 16,744개를 키 접두어(pc_<기능>_…)로 묶어 기능 영역 150여 개를 뽑고,
영역마다 실제 문구를 읽어 기능을 확인했다. 리소스 폴더(builtin_skills·digital_human·lvop_intelligent_crop·smart_relight 등)도 대조.
PBCUT 쪽은 소스 검색으로 확인. ✅ 있음 · ◐ 일부 · ❌ 없음.

## 이번에 만드는 것(내 맥에서 · 상업 이용 가능한 라이선스로 가능)

| 캡컷 기능(문구 근거) | PBCUT 전 | 만드는 것 |
|---|---|---|
| Shapes(pc_shape 60: 사각·원·화살표·자유 도형, 채우기·그라디언트·점선·모서리·그림자) | ❌ | 도형 도구 |
| Charts(pc_charts 164: 막대·선·원·표, 데이터 표 편집, 축·범례, 애니메이션) | ❌ | 애니메이션 차트 |
| Text-based editing(pc_transcript 25: 대본에서 지우면 영상이 잘림) | ◐(군말 지우기만) | 대본 편집 패널 |
| AI emojis(pc_emoji 34: 자막마다 이모지 자동) | ❌ | AI 이모지 자막 |
| Stroke(pc_stroke 18: 누끼 외곽선·점선·찢어진 종이·여러 겹·그림자) | ❌ | 누끼 외곽선 |
| AI packaging / AI sound effects(pc_auto·pc_int: 자막·효과음·인트로·챕터 전환 한 번에) | ◐(템플릿) | AI 자동 포장 |
| Separate audio(pc_keep·pc_sound: 보컬·드럼·베이스·피아노·기타·기타 악기) | ◐(보컬/반주 2개) | 6갈래 음원 분리 |
| Noise reduction(pc_video: 화면 노이즈 제거) | ◐(화질 향상에 섞임) | 영상 노이즈 제거 |
| Export still frame / Export selected clips(pc_export) | ❌ | 정지 프레임 PNG·클립별 내보내기 |
| Collage / Layout(분할 화면) | ❌ | 분할 화면 레이아웃 |
| Brand kit(pc_brand 78: 색·글꼴·로고 저장) | ❌ | 브랜드 키트 |
| Retouch: Clear blemishes(pc_retouch) | ❌ | 잡티 제거 |
| Lyrics(pc_caption: 노래 가사 자막) | ❌ | 가사 자막(보컬 분리 후 받아쓰기) |
| Multi-camera clip(pc_multi 36: 최대 9앵글, 앵글 전환) | ◐(소리로 맞추기만) | 멀티캠 클립·앵글 전환 |
| Import AAF/XML/FCPXML(pc_media) | ❌ | 프리미어·파이널컷 XML 가져오기 |

## REA 정적 분석으로 추가 확인한 것(rea-agents 6.4.0)
- `inspect-artifact /Applications/CapCut.app` → Evidence `ev_516b3e5c…`(인벤토리 `ev_a99fd5aa…`): 파일 4,924개. QML 401개는 Qt 기본 컨트롤뿐이고 실제 화면은 네이티브 바이너리에 컴파일되어 있다(디컴파일 도구 Ghidra·Hopper 없음 → 바이너리 내부는 미확인).
- `analyze-javascript-application lumi_js_resources(_video)` → `ev_d56fab12…`·`ev_ee74cee2…`: 렌더링 부품(blend·mask·blit)뿐, 기능 정의 없음.
- 내장 AI 모델 93개(Resources/models) — 기기에서 도는 기능의 근거:
  대화형 누끼(tt_interactive_matting·mobilevos=클릭한 물체 따라 오리기), 깊이 추정(tt_depth_estimation=입체·3D 줌), 프레임 보간(lens_vfi·umvfi),
  영상 노이즈 제거(nn_denoise), 장면 감지(ShotDetect), 물체 추적, 피부 분할(잡티), 얼굴 묶기(faceclusting), 손 제스처, 반려동물 얼굴, 만화·성별 변환 GAN, 3D 아바타.
- 내장 에이전트 스킬 6개(Resources/builtin_skills): 하이라이트 추출·소재 이해·편집안/대본 생성·**스마트 말 편집(군말·쉼·「되풀이」 지우기)**·**배경음악 길이 맞추기+이음 효과음+끝 페이드**·긴 영상 줄이기.

### REA 로 늘어난 만들 것
| 근거 | PBCUT 전 | 만드는 것 |
|---|---|---|
| speaker 스킬 「去重复」 | ❌ | 되풀이(같은 말 다시 찍기) 지우기 — 마지막 테이크만 남김 |
| align_bgm 스킬 | ❌ | 배경음악을 영상 끝에 맞춰 자르고 페이드·컷마다 휙 효과음 |
| tt_interactive_matting·mobilevos | ❌ | 클릭한 물체 오리기(MediaPipe 대화형 분할, Apache-2.0) |
| tt_depth_estimation | ❌ | 입체 사진(깊이로 3D 줌·패럴랙스, Depth Anything V2 Small, Apache-2.0) |
| nn_denoise | ◐ | 영상 노이즈 제거(위 표와 같음) |

## 이미 있는 것(대조 완료)
자동 자막·이중 자막·번역·자막 파일, 키프레임·이징, 속도 곡선·광학 흐름 슬로모션, 마스크(6종), 혼합 모드, 크로마키, 배경 제거,
HSL·곡선·컬러 휠·LUT·색 맞추기, 얼굴·몸 보정, 조명 다시 비추기, 흔들림 보정·모션 블러·깜빡임 제거·고해상도, 장면 나누기,
물체 추적·자동 리프레임, 비트 마커, 군말·무음 자르기, 하이라이트(Clipper), AI 문구(AI writer), AI 목소리·더빙·립싱크·아바타·시선,
화면 녹화·내레이션 녹음, 컴파운드 클립, 마커, GIF·HEVC·오디오 내보내기.

## 만들지 않는 것(이유)
| 캡컷 기능 | 이유 |
|---|---|
| AI music(가사 있는 노래 생성) | 쓸 만한 로컬 모델(MusicGen 등) 가중치가 비상업 라이선스 → 업로드·수익화 불가 |
| AI remove/remix·AI expand(영상 지우기·확장 생성) | 영상용 공개 모델(ProPainter 등)이 비상업 라이선스. 사진 지우기(LaMa, Apache)는 다음 단계 후보 |
| AI hair·패션 모델·옷 바꾸기 영상 | 생성형 클라우드 기능, 상업 가능 로컬 모델 없음 |
| Overdub(내 목소리 복제로 말 고치기) | 상업 가능 후보(CosyVoice2, Apache)는 있으나 목소리 도용 위험·용량 커서 별도 결정 필요 |
| Seedance·Seedream·Nano Banana 생성 | 유료 클라우드 모델 — PBCUT 은 Higgsfield 연결(선택)로 대체 |
| 클라우드 동기화·팀 스페이스·템플릿 게시·초대 보상 | 서버·계정이 필요한 서비스 기능 |

## 구현 결과(v0.6.0) — `scripts/verify-gap.mjs` 22개 검사(정답 아는 재료로 수치 확인)
| 기능 | 위치(앱) | 검증 |
|---|---|---|
| 도형 12종(채우기·그라디언트·점선·그림자·그려지며 나타나기) | 도형·차트 탭 | 채움 색 일치, 화살표가 0.15초엔 비고 1.5초엔 그려짐 |
| 차트 7종(막대·가로·선·영역·원·도넛·숫자), 데이터 표 편집 | 도형·차트 탭 | 막대가 자람(초반<20%), 100:50 → 높이 비 2.00 |
| 대본으로 편집 + 되풀이 고르기 | 자막 탭 → 대본 열기 | 다시 말한 문장(받아쓰기가 한 번만 적은 부분)까지 찾아 7.3→5.0초, 문장 1번만 남음 |
| AI 이모지(전체·가끔) | 자막 탭 | 자막 6줄 중 4줄에 시각 맞춰 3D 이모지(역도·체크 등) |
| 가사 자막 | 자막 탭 | 목소리만 뽑아 받아써 카라오케 자막 |
| 누끼 외곽선 6종 | 클립 → 마스크·합성 | 외곽선 없음 0% → 초록 띠 1.7%, 피사체 유지 |
| 영상 노이즈 제거 | 클립 → 도구 | 실제 영상+잡음 PSNR 26.3→34.2dB(시간 평균 필터, 공간 필터는 +1~1.5dB 라 기각) |
| 현재 화면 PNG · 클립마다 따로 내보내기 | 내보내기 | PNG 픽셀 색 일치 |
| 분할 화면 6종(좌우·위아래·3분할·큰 위+2·2×2·화면 속 화면) | 클립 2개 이상 선택 → 도구 | 위=빨강·아래=파랑 |
| 브랜드 키트(색·로고·글자 스타일, 디스크 저장) | 텍스트 탭 맨 위 | 저장 확인, 로고 오른쪽 위 전체 길이 |
| 멀티캠(소리로 맞춤 → 앵글 1~9 키로 전환) | 클립 2개 이상 → 멀티캠 만들기 | 1.5초 어긋난 카메라를 1.5초에 맞춤, 3초에서 앵글2 = 원본 1.5초 |
| 프리미어 XML·파이널컷 FCPXML 가져오기 | 열기 | 시작·in 점·위 트랙·분리된 소리·연결 클립 위치 일치 |
| 클릭한 물체 오리기(MagicTouch, 영상은 따라감) | 클립 → 마스크·합성 → 물체 골라 오리기 | 누른 원만 남고 회색 배경 제거 |
| 입체 사진(Depth Anything V2 Small) 6가지 움직임 | 사진 클립 → 기본 | 얼굴 깊이 170 > 모서리 67, 시간에 따라 화면 변화 |
| 악기별 6갈래 분리(Demucs htdemucs_6s) | 클립 → 오디오 분리 | 록 곡 → 보컬·드럼·베이스·기타, 합치면 원본(재구성 25dB) |
| AI 자동 포장 | AI 도구 탭 | 자막 6·핵심어 4·훅 제목·컷 효과음·이모지 4, 배경음악 끝=영상 끝·페이드 2초·덕킹 |

추가 라이선스: MediaPipe MagicTouch(Apache-2.0, 모델 카드 확인 — 동의 없는 사람 분할은 범위 밖) · Depth Anything V2 **Small**(Apache-2.0; Base·Large 는 CC-BY-NC 라 제외) · Demucs 코드·가중치(MIT, 피아노 갈래는 품질이 약하다고 저자 명시).
