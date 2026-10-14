#!/bin/bash
# PBCUT 설치: 터미널에 한 줄 붙여 넣으면 최신 버전을 받아 응용 프로그램 폴더에 넣고 바탕화면에 바로가기를 만듭니다.
#   curl -fsSL https://sincere9292-debug.github.io/pbcut/install.sh | bash
set -euo pipefail
URL="https://github.com/sincere9292-debug/pbcut/releases/latest/download/PBCUT-mac-arm64.dmg"
if [ "$(uname -m)" != "arm64" ]; then
  echo "PBCUT 는 Apple Silicon 맥(M1 이상)에서만 돌아갑니다. 이 맥은 $(uname -m) 입니다." >&2
  exit 1
fi
TMP="$(mktemp -d)"
trap 'hdiutil detach "$TMP/mnt" -quiet >/dev/null 2>&1 || true; rm -rf "$TMP"' EXIT
echo "▶ PBCUT 받는 중(약 340MB)…"
curl -fL --retry 5 --retry-delay 3 -C - --progress-bar -o "$TMP/PBCUT.dmg" "$URL"
echo "▶ 설치 중…"
hdiutil attach "$TMP/PBCUT.dmg" -nobrowse -readonly -quiet -mountpoint "$TMP/mnt"
if pgrep -f "/Applications/PBCUT.app/Contents/MacOS/PBCUT" >/dev/null; then
  osascript -e 'quit app "PBCUT"' >/dev/null 2>&1 || true
  sleep 2
fi
rm -rf /Applications/PBCUT.app
ditto "$TMP/mnt/PBCUT.app" /Applications/PBCUT.app
xattr -dr com.apple.quarantine /Applications/PBCUT.app 2>/dev/null || true
# 바탕화면 바로가기(이미 있으면 그대로)
if [ ! -e "$HOME/Desktop/PBCUT" ]; then
  osascript -e 'tell application "Finder" to set a to make alias file to POSIX file "/Applications/PBCUT.app" at (path to desktop folder)' -e 'tell application "Finder" to set name of a to "PBCUT"' >/dev/null 2>&1 || true
fi
VER="$(defaults read /Applications/PBCUT.app/Contents/Info.plist CFBundleShortVersionString 2>/dev/null || echo '?')"
echo "✅ PBCUT ${VER} 설치 완료 — 바탕화면의 PBCUT 를 두 번 눌러 실행하세요."
open /Applications/PBCUT.app
