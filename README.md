# DotFiles

![alt text](https://i.imgur.com/5BMN5IY.png "Glorious Desktop")

# Table of contents
1. [Kitty](#kitty)
2. [Picom](#picom)
3. [Polybar](#polybar)
4. [VSCode](#vscode)

## Kitty <a name="kitty"></a>

I am using [this repository of themes](https://github.com/dexpota/kitty-themes).

As an excuse to play with ZSH autocompletion mechanisms, I built a basic *change kitty theme* command. You can find it in the `scripts` folder. The autocompletion bit is in `.scripts/custom-autocompletes-zsh`.

If you want to use it, make sure you add these two variables to your .zshrc or .bashrc, updating them with your paths:
```
# Path of the kitty themes repository
export KITTY_THEMES_PATH="~/.config/kitty/kitty-themes/themes/"
export KITTY_CONFIG_PATH=~/.config/kitty/
```

And add this:

```
#Adding custom directory to fpath. To define my own autocompletion rules.
fpath=(~/.scripts/custom-autocompletes-zsh $fpath)
```
**This path must contain the autocompletion script!**
Or any other path in the fpath var. I prefer to use my own.

Then put the `.scritps` folder in your `$HOME` and symlink the `changekt` script:

```
ln -s ~/.scripts/kitty/changekt.zsh /usr/bin/changekt
```

Open a new terminal or run
```
compinit -u
```

## Picom dual-kawase <a name="picom"></a>

Worth noting that I am using the `dual_kawase` blur kernel available [here](https://github.com/tryone144/compton) and also [neatly packaged on AUR](https://aur.archlinux.org/packages/picom-tryone-git/), since it doesn't seem to be really widespread.

Relevant config:
```
blur-method = "dual_kawase";
blur-strength = 4;
```

## Polybar <a name="polybar"></a>

Stole it from [here](https://github.com/milad-abbasi/i3-dotfiles). Slightly reworked. Author: [milad-abbasi](https://github.com/milad-abbasi).


## VScode <a name="vscode"></a>

[Slime theme](https://marketplace.visualstudio.com/items?itemName=smlombardi.slime)

