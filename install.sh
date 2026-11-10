#!/usr/bin/env bash
set -euo pipefail
# Ubuntu에서는 bat 실행 파일 이름이 batcat이다
sudo apt-get update
sudo apt-get install -y bat
# .bashrc는 덮어쓰지 않고 한 줄만 추가한다(lab.env 자동 로드와 prompt 유지)
grep -q 'personal.sh' ~/.bashrc || echo '. ~/dotfiles/personal.sh' >> ~/.bashrc
