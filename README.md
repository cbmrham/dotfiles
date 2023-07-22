# README

This is chimaru's MacOS auto setup scripts.

---

## install

execute the `install.sh`

---

## add dotfiles on the home directory to the repo

```sh
mv ~/.xxxxxxx dotfiles
make install
```

---

## add or update applications managed by brew

```sh
brew bundle dump
```

## iterm settings

Open the iterm Settings > `General > Preference` and set the path

```
~/.config/iterm2/com.googlecode.iterm2.plist
```
