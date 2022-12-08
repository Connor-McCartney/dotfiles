# dotfiles

```bash
cd /tmp
git clone https://github.com/Connor-McCartney/dotfiles

rm -r ~/.tex-templates ~/.local/share/konsole ~/.config/nvim ~/.bashrc.d ~/.wallpapers


mv dotfiles/.tex-templates ~/.tex-templates
mv dotfiles/.wallpapers ~/.wallpapers
mv dotfiles/.local/share/konsole ~/.local/share/konsole
mv dotfiles/.config/nvim ~/.config/nvim
mv dotfiles/.config/kglobalshortcutsrc ~/.config/kglobalshortcutsrc
mv dotfiles/.config/kwinrc ~/.config/kwinrc
mv dotfiles/.config/kwinrulesrc ~/.config/kwinrulesrc
mv dotfiles/.config/konsolerc ~/.config/konsolerc
mv dotfiles/.config/kdeglobals ~/.config/kdeglobals
mv dotfiles/.config/plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc
mv dotfiles/.config/kwalletrc ~/.config/kwalletrc
mv dotfiles/.bashrc.d ~/.bashrc.d
mv dotfiles/.vimrc ~/.vimrc
mv dotfiles/.tmux.conf ~/.tmux.conf

rm -rf dotfiles
```
