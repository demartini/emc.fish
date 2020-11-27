<div align="center">
  <br>
  <img src="./.github/assets/logo.svg" alt="Logo" width="200">
  <br><br>

  <h1>emc.fish</h1>
  <h4>Edit My Config</h4>
  <br>

[![gitter badge][]][gitter] [![releases badge][]][releases] [![fish version badge][]][fish shell] [![license badge][]][license]
</div>

**Table of Contents**
- [Why](#why)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
  - [Using custom command](#using-custom-command)
  - [Using different editor](#using-different-editor)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)

## Why

Edit My Config is a plugin for [Fish Shell][], it was made for those like me who are tired of typing long commands.

## Features

* Opens config files easily for:
  * [Bash][]
  * [Fish Shell][]
  * [Git][]
  * [GPG][]
    * GPG agent
  * [Neovim][]
  * [starship][]
  * [tmux][]
  * [Vim][]
  * [Zsh][]
* Saves typing
* Custom command and editor
* Tab completions
* 100% pure Fish

Want more features? Please open an [issue][] or send a [pull request][]!

## Installation

Install with [Fisher][] (recommended):

```fish
fisher install demartini/emc.fish
```

## Usage

Call `emc` in your terminal with an `option`:

```fish
$ emc [<option>]
```

![demo][]

| **Option**     | **Description**                  |
| -------------- | -------------------------------- |
| `emc bash`     | Opens the Bash config file.      |
| `emc fish`     | Opens the Fish config file.      |
| `emc git`      | Opens the Git config file.       |
| `emc gpg`      | Opens the GPG config file.       |
| `emc gpga`     | Opens the GPG agent config file. |
| `emc nvim`     | Opens the Neovim config file.    |
| `emc starship` | Opens the starship config file.  |
| `emc tmux`     | Opens the tmux config file.      |
| `emc vim`      | Opens the Vim config file.       |
| `emc zsh`      | Opens the Zsh config file.       |
| `emc version`  | Show the current version.        |
| `emc help`     | Print help.                      |

## Customization

### Using custom command

If you would like to customize `emc` default command, then set your own `EMC_CMD` universal variable. For example:

```fish
set --universal --export EMC_CMD ec
```

Alternatively, you can add the following line to your `~/.config/fish/config.fish`:

```fish
set --export EMC_CMD ec
```

### Using different editor

The default editor is [VS Code][], but if you would like to use a different one, then set your own `EMC_EDITOR` universal variable. For example:

```fish
set --universal --export EMC_EDITOR nvim
```

Alternatively, you can add the following line to your `~/.config/fish/config.fish`:

```fish
set --export EMC_EDITOR nvim
```

## Contributing

If you are interested in helping contribute, please take a look at our [contribution guidelines][] and open an [issue][] or [pull request][].

## Changelog

See [CHANGELOG][] for a human-readable history of changes.

## License

Distributed under the MIT License. See [LICENSE][] for more information.

[bash]: https://www.gnu.org/software/bash
[changelog]: CHANGELOG.md
[contribution guidelines]: CONTRIBUTING.md
[demo]: .github/assets/demo.svg
[fish shell]: https://fishshell.com
[fish version badge]: https://img.shields.io/badge/fish-3.1.2%2B-53AF47?colorA=252525&style=for-the-badge
[fisher]: https://github.com/jorgebucaran/fisher
[git]: https://git-scm.com
[gitter badge]: https://img.shields.io/gitter/room/demartini/emc.fish?colorA=252525&colorB=53AF47&logo=gitter&style=for-the-badge
[gitter]: https://gitter.im/demartini/emc.fish?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge
[gpg]: https://gnupg.org
[issue]: https://github.com/demartini/emc.fish/issues
[license badge]: https://img.shields.io/github/license/demartini/emc.fish?colorA=252525&colorB=53AF47&style=for-the-badge
[license]: LICENSE
[neovim]: https://neovim.io
[pull request]: https://github.com/demartini/emc.fish/pulls
[releases badge]: https://img.shields.io/github/v/release/demartini/emc.fish?colorA=252525&colorB=53AF47&label=Version&style=for-the-badge
[releases]: https://github.com/demartini/emc.fish/releases
[starship]: https://starship.rs
[tmux]: https://github.com/tmux/tmux
[vim]: https://www.vim.org
[vs code]: https://code.visualstudio.com
[zsh]: https://www.zsh.org
