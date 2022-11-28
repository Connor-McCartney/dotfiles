# dotfiles

```bash
cd /tmp
git clone https://github.com/Connor-McCartney/dotfiles

rm -r ~/.tex-templates ~/.local/share/konsole ~/.config/nvim ~/.bashrc.d ~/.vimrc ~/.tmux.conf
rm -r ~/.config/kwinrulesrc ~/.config/khotkeysrc

mv dotfiles/.tex-templates ~/.tex-templates
mv dotfiles/.local/share/konsole ~/.local/share/konsole
mv dotfiles/.config/nvim ~/.config/nvim
mv dotfiles/.config/kwinrulesrc ~/.config/kwinrulesrc
mv dotfiles/.config/khotkeysrc ~/.config/khotkeysrc
mv dotfiles/.bashrc.d ~/.bashrc.d
mv dotfiles/.vimrc ~/.vimrc
mv dotfiles/.tmux.conf ~/.tmux.conf

rm -rf dotfiles
```
