# Конфигурация Neovim

## Установка
- Git
- Node.js
```bash
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# download and install Node.js
nvm install 20
```
- NerdFont (шрифт)
```bash
#скопировать в ~/.local/share/fonts
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono/Ligatures/Regular
```
- Neovim
 ```bash
sudo apt remove neovim

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

 ```
- Удалите старую конфигурацию
```bash
#back up old configuration
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

#remove old configuration
rm -R ~/.config/nvim 
rm -R ~/.local/share/nvim 
rm -R ~/.local/state/nvim 
rm -R ~/.cache/nvim 
```
- Скопируйте содержимое репозитория в каталог ~/.config/nvim

### Важно
Для корректной работы LSP серверов - установите их (например через :Mason в Neovim)
