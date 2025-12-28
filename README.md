# DockSwitcher

Простой скрипт для macOS, который переключает Dock между двумя профилями (`dock_a.plist` и `dock_b.plist`) по хоткею.

## Установка

1. Установить dockutil
```bash
brew install dockutil
```

2. Скопируйте файлы в папку `dockswitcher` в любое постоянное место, например `~/dockswitcher`.
3. Сделайте скрипт исполняемым:

```bash
chmod +x ~/dockswitcher/switch_dock.sh
```

4.	Установите Hammerspoon и создайте/отредактируйте ~/.hammerspoon/init.lua:

```lua
hs.hotkey.bind({"cmd"}, ";", function()
    hs.execute("~/dockswitcher/switch_dock.sh", true)
end)
```

5. Перезагрузка конфига
```h
hs.reload()
```

## Работает на Mac OS Tahoe
