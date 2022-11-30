# dotfiles

```bash
cd /tmp
git clone https://github.com/Connor-McCartney/dotfiles

rm -r ~/.tex-templates ~/.local/share/konsole ~/.config/nvim ~/.bashrc.d


mv dotfiles/.tex-templates ~/.tex-templates
mv dotfiles/.local/share/konsole ~/.local/share/konsole
mv dotfiles/.config/nvim ~/.config/nvim
mv dotfiles/.config/kglobalshortcutsrc ~/.config/kglobalshortcutsrc
mv dotfiles/.config/kwinrc ~/.config/kwinrc
mv dotfiles/.config/konsolerc ~/.config/konsolerc
mv dotfiles/.config/kdeglobals ~/.config/kdeglobals
mv dotfiles/.bashrc.d ~/.bashrc.d
mv dotfiles/.vimrc ~/.vimrc
mv dotfiles/.tmux.conf ~/.tmux.conf

rm -rf dotfiles
```
