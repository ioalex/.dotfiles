# Dotfiles Salsa

[![Starsgazers](https://img.shields.io/github/stars/ioalex/dotfiles.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/ioalex/dotfiles/stargazers/)
[![Forks](https://img.shields.io/github/forks/ioalex/dotfiles.svg?style=social&label=Fork&maxAge=2592000)](https://GitHub.com/ioalex/dotfiles/network/)
[![Contributors](https://img.shields.io/github/contributors/ioalex/dotfiles.svg)](https://GitHub.com/ioalex/dotfiles/graphs/contributors/)
[![Issues](https://img.shields.io/github/issues/ioalex/dotfiles.svg)](https://GitHub.com/ioalex/dotfiles/issues/)
[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](http://unlicense.org/)

<br />
<p align="center">
  <a href="https://github.com/ioalex/dotfiles#readme#introduction">
    <img src="https://www.pngkit.com/png/detail/396-3965119_salsa-mexican-cuisine-bolognese-sauce-tomato-sauce-bolognese.png"
    alt="Logo"
    width="80"
    height="80">
  </a>

  <h3 align="center">Dotfiles Salsa</h3>

  <p align="center">
    Taste-tested configuration files.
    <br />
    <a href="https://github.com/ioalex/dotfiles#readme">
    <strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ioalex/dotfiles#introduction">View Demo</a>
    ·
    <a href="https://github.com/ioalex/dotfiles/issues">Report Bug</a>
    ·
    <a href="https://github.com/ioalex/dotfiles/issues">Request Feature</a>
  </p>
</p>

## Table of Contents

## Introduction

[![Dotfiles Screen Shot][product-screenshot]](https://GitHub.com/ioalex/dotfiles)

<p align="center"><i>Please excuse my crappy specs...</i></p>
<br />

This is a repository for my personal dotfiles, aka the <b>source</b>-iest dotfiles in town (sorry 😅). You've been warned, there's a whole lotta' sourcing in this repo!

As of now, these dotfiles are MacOS-focused but I will add configuration for Linux when I learn it.

The magic behind these dotfiles is GNU Stow, a symlink farm manager. The [install.sh](https://github.com/ioalex/dotfiles/blob/master/install.sh) script will attempt to install applications and Stow the respective dotfiles into the right place.

## Ingredients

Configuration for:

- Alacritty
- Bash
- Colorls
- Git
- Htop
- Micro
- Nano
- Neofetch
- Ranger
- Ripgrep
- Starship
- Tmux
- Wget
- ZSH

You can find a list of Homebrew applications that the scripts will attempt to install [here](https://github.com/ioalex/dotfiles/blob/master/brew/Brewfile).

## Getting Started

### Prerequisites

- Homebrew
- Git
- Stow

If these are not installed, the scripts will attempt to install them.

### Installation

To install you can run the following commands in your terminal:

```shellscript
git -C $HOME clone https://github.com/ioalex/dotfiles.git .dotfiles
cd $HOME/.dotfiles
source install.sh
```

## Contributing

If you have any suggestions on how I can improve my dotfiles, feel free to contact me via email or fork this project and make a pull request!

Contributions are what make the open source community such an amazing place to be learn, inspire, and create.

Any contributions you make are **greatly appreciated** - whether it is by opening an issue or suggesting a change!

Here's how you can participate:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the Unlicense License. See [`LICENSE`](https://github.com/ioalex/dotfiles/blob/master/LICENSE) or [Unlicense](http://unlicense.org/) for more information.

## Contact

Alex - [@ioalex_](https://twitter.com/ioalex_) - alex@alexhe.io

Project Link: [https://github.com/ioalex/dotfiles](https://github.com/ioalex/dotfiles)

## Acknowledgements

- [Best-README-Template](https://github.com/othneildrew/Best-README-Template)
- [GitHub Dotfiles](https://dotfiles.github.io/)

<!-- Links -->

[product-screenshot]: https://i.imgur.com/NVOZoTk.png
