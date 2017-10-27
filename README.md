# 🔥 Stephen's Dotfiles 🔥

> Quickly install a beautiful custom ZSH environment along with Homebrew, rbenv, NVM, Go, Elixir, PostgreSQL, Redis, Yarn, Tmux, and a nice Vim editor. My dotfiles are opinionated and obviously superior. Enjoy.

![iTerm2](https://raw.github.com/stephenhowells/dotfiles/master/iterm/terminal.png)

### Installation

```sh
# Clone the repo
$ git clone https://github.com/stephenhowells/dotfiles.git ~/.dotfiles

# Install Oh My ZSH
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make install scripts executable
$ chmod +x ~/.dotfiles/scripts/*.sh

# Symlink the dotfiles, Homebrew install, OMZ plugins
$ sh ~/.dotfiles/scripts/install.sh

# Goodies (Ruby, Node, Vim)
$ sh ~/.dotfiles/scripts/post-install.sh
```

### Pro Tips

1. I use [iTerm2](https://www.iterm2.com) and you should too.
2. The [Base16 iTerm2](https://github.com/chriskempson/base16-iterm2) repository has pretty much any color scheme you'd ever want for iTerm2. I use a tweaked version of the `base16-unikittydark.dark` theme which is included in the `iterm` folder of this repository named `stephen.itermcolors`. Simply import that file into iTerm2 and select it as your color preset.
3. Use [Fira Code](https://github.com/tonsky/FiraCode) for sweet looking ligatures in the terminal.
4. Store all secret files (.netrc, etc…) in the `secrets` folder. They will be ignored by git.
5. In iTerm2 tweak a few key bindings globally or in an individual profile to move the cursor easily between words and lines:

```txt
⌘←  "SEND HEX CODE" 0x01  # Move cursor to the beginning of the line.
⌘→  "SEND HEX CODE" 0x05  # Move cursor to the end of the line.
⌥←  "SEND ESC SEQ"  b     # Move cursor one word back.
⌥→  "SEND ESC SEQ"  f     # Move cursor one word forward.
```

### License

MIT
