# dotfiles

## Clone dotfiles to `$HOME` dir

`git clone git@github.com:aryanj-nyc/dotfiles.git $HOME/dotfiles`

## [brew](https://brew.sh)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=$HOME/dotfiles/macOS/Brewfile
```

## [asdf](https://asdf-vm.com/)

```bash
# nodejs
asdf plugin add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs latest
asdf global nodejs (asdf latest nodejs)

# yarn
asdf plugin add yarn
asdf install yarn latest
asdf global yarn (asdf latest yarn)
```

## macOS

```bash
bash $HOME/dotfiles/macOS/defaults.sh
bash $HOME/dotfiles/macOS/dock.sh

mkdir $HOME/.config
```

## [vscode](https://code.visualstudio.com)

```bash
cat $HOME/dotfiles/vscode/extensions | xargs -L 1 echo code --install-extension | sh

ln -sf $HOME/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -sf $HOME/dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $HOME/dotfiles/vscode/snippets/javascript.json $HOME/Library/Application\ Support/Code/User/snippets/javascript.json
```

## [stow](https://www.gnu.org/software/stow/)

`stow bash git karabiner tmux vim`
