# personal-zgen-base

zgen load statements I tend to have an every system, to de-boilerplate my zshrc a bit

## Motivation & Background

I use zgen to manage my zshrc. This is nice in de-boilerplating and de-duplicating my zshrc, in that I can essentially
reduce my entire zshrc into a series of plugins.

However, I do a lot of dev work, and so naturally a number of plugins I pull in are related to development in specific
languages. I don't necessarily need or want all of these plugins on every machine. However, there's a certain base set
of plugins I want on every machine (e.g. those for directory navigation).

This "plugin" is just a series of zgen load statements, so I can pull in all my "base" plugins in one line at the top
of my zgen load block, rather than the alternatives of:
- either scanning through an existing zshrc to pull out which lines belong on a new system
- or, copy-pasting an existing zshrc, and pulling in a lot more plugins than I need.

## Possible Issues

- At the moment this **must** be the first include.
- Pushing loads into a separate file does add a potentially confusing layer of abstraction.
  - If I forget which files are loaded here in "base", I might get unexpected behavior from having a plugin I didn't
    expect. I suspect this would be quick to debug via `zgen list`
  - I don't think zgen does anything to prevent a module from being sourced twice, so that might cause inefficiencies
    or unexpected behavior if I do end up including the same module twice. I think most zsh plugins are at least
    idempotent though, so hopefully that at least wouldn't be a problem?
  - if every ordering matters between two loads, I might have to pull this file apart.
  - in general, ordering can be headachey in a lot of ways. Some of my personal configs depend on each other in wonky
    ways. Some plugins demand to be the last include. Some plugins demand to be the first include.
- This plugin does introduce a hard depenency on zgen, so it's rather unportable.
- This plugin is rather specific to my personal tastes, so it's not necessarily particularly reusable by anyone else.
- Since I have oh-my-zsh loads in here, this introduces a hard dependency on oh-my-zsh. So again, not very portable/not
  very flexible.
