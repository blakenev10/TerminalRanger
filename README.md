# TerminalRanger
Various scripts intended to be used on GNOME Terminal and Z Shell.


## rrpull
Command that pulls from git repositories found in a specified location.

The `$REPOS` environment variable should be defined as a single directory that contains the git repos that should be
parsed. If not all git repos in the `$REPOS` directory should be pulled from, the user can create an rrpullblacklist.txt
file in the `$REPOS` directory and name the relative directories that should be avoided. Each relative directory in the
blacklist file should have it's own line. For example...
rrpullblacklist.txt file contents:
```
Bar
Baz/Waz
```
Expected behavior:
```
File tree ($REPOS=repos):
repos/
├── Bar/
│   └── Bar/
│       └── .git/     #blacklisted
├── Baz/
│   ├── Waz/
│   │   └── .git/     #blacklisted
│   └── Wiz/
│       └── .git/
└── Foo/
    └── Foo/
        └── .git/
```


### Requirements
- `$REPOS` environment variable defined to be an absolute directory where the `rrpull` command will search for
  repositories.
- (optional) rrpullblacklist.txt file defined in the `$REPOS` directory with blacklisted paths defined as relative
  directories from `$REPOS`


## Installation
The installation process is as simple as cloning the repo and running the `install` makefile target. See commands below:
```
git clone git@github.com:blakenev10/TerminalRanger
```
```
cd TerminalRanger
sudo make install
```
Everything installs to `/usr/local/bin` so `sudo` is required when running the `make install`.
