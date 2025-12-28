#!/bin/bash

# Базовая папка проекта
BASE_DIR="$HOME/dockswitcher"

# Файлы
STATE_FILE="$BASE_DIR/state.txt"
DOCK_A="$BASE_DIR/dock_a.plist"
DOCK_B="$BASE_DIR/dock_b.plist"

# Проверка существования state.txt
if [ ! -f "$STATE_FILE" ]; then
  echo "A" > "$STATE_FILE"
fi

CURRENT=$(cat "$STATE_FILE")

# Определяем целевой профиль
if [ "$CURRENT" = "A" ]; then
  TARGET="B"
  PROFILE="$DOCK_B"
else
  TARGET="A"
  PROFILE="$DOCK_A"
fi

# Проверяем, существует ли plist
if [ ! -f "$PROFILE" ]; then
  echo "Ошибка: профиль $PROFILE не найден"
  exit 1
fi

# Применяем профиль Dock
defaults import com.apple.dock "$PROFILE"

# Перезапускаем Dock и ждём, чтобы изменения применились
killall Dock
sleep 0.5  # короткая пауза для стабильности

# Обновляем state.txt
echo "$TARGET" > "$STATE_FILE"

echo "Dock переключен на профиль $TARGET"
