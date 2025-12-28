# DockSwitcher

Простой скрипт для macOS, который переключает Dock между двумя профилями (`dock_a.plist` и `dock_b.plist`) по хоткею.

## Установка

1. Скопируйте папку `dockswitcher` в любое постоянное место, например `~/dockswitcher`.
2. Сделайте скрипт исполняемым:

```bash
chmod +x ~/dockswitcher/switch_dock.sh
```

3.	Установите Hammerspoon и создайте/отредактируйте ~/.hammerspoon/init.lua:

```lua
hs.hotkey.bind({"cmd"}, ";", function()
    hs.execute("~/dockswitcher/switch_dock.sh", true)
end)
```

4. Перезагрузка конфига
```h
hs.reload()
```