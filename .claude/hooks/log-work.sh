#!/bin/bash
# 작업 흔적 기록 훅: 파일 편집 도구 사용 시마다 worklog.txt에 한 줄 추가
input=$(cat)
tool=$(printf '%s' "$input" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
echo "$(date '+%Y-%m-%d %H:%M:%S') tool=${tool:-unknown}" >> "$CLAUDE_PROJECT_DIR/.claude/worklog.txt"
exit 0
