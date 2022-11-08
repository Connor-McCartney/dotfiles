# dotfiles

```bash
cd /tmp
git clone https://github.com/Connor-McCartney/dotfiles

rm -rf ~/.tex-templates ~/.local/share/konsole ~/.config/nvim ~/.bashrc.d

mv dotfiles/.tex-templates ~/.tex-templates
mv dotfiles/.local/share/konsole ~/.local/share/konsole
mv dotfiles/.config/nvim ~/.config/nvim
mv dotfiles/.bashrc.d ~/.bashrc.d
mv dotfiles/.vimrc ~/.vimrc

rm -rf dotfiles
```
