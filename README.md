# Saucy Dotfiles

This is a repository for my personal dotfiles, aka the source-iest dotfiles in town (sorry). You've been warned, there's a whole lotta' sourcing in this repo!

I created this repo to make it easier for myself to setup a fresh new MacOS computer in the event I win the lottery.

I've gotten really comfortable in a UNIX environment, so I don't think I can switch back to Windows anytime soon. A near-future goal of mine is to learn how to use Linux.

As of now, these dotfiles are MacOS-focused but I will add configuration for Linux when I learn it. The beauty of UNIX systems is that I will probably be able to use the same or similar dotfiles with little tweaking.

The magic behind these dotfiles is GNU Stow, a symlink farm manager. With Stow, all you really need to do is git clone this repository to your home directory. Then within the newly created .dotfiles directory, you create symlinks with STOW. A more detailed writeup of this process will be added soon - I hope.

To Git Clone this folder:

```shellscript
git -C $HOME clone https://github.com/ioalex/dotfiles.git .dotfiles
```
