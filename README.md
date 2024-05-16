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
  repositories
- (optional) rrpullblacklist.txt file defined in the `$REPOS` directory with blacklisted paths defined as relative
  directories from `$REPOS`


### Usage
Run the command `rrpull` and the rest of the process is automated. No arguments or other behavior is supported.

Once the command is run, the script will search for any files named `.git` in all subdirectories of `$REPOS` and call
`git pull` in their directory if they are not in a blacklisted directory. Files within blacklisted directories will be
skipped. Files in subdirectories of blacklisted directories will be skipped. Sample output of the above example can be
seen below:
```
[rrpull    ] Blacklisted directories:
[rrpull    ]    /repos/Bar
[rrpull    ]    /repos/Baz/Waz
----------------------------------------------------------------------------------------------------
[rrpull    ] Pulling /repos/Baz/Wiz
[rrpull git]    Already up to date.
----------------------------------------------------------------------------------------------------
[rrpull    ] Skipping blacklisted repo: /repos/Baz/Waz
----------------------------------------------------------------------------------------------------
[rrpull    ] Skipping blacklisted repo: /repos/Bar/Bar
----------------------------------------------------------------------------------------------------
[rrpull    ] Pulling /repos/Foo/Foo
[rrpull git]    Already up to date.
```


## Installation
The installation process is as simple as cloning the repo and running `make install`.
```
git clone git@github.com:blakenev10/TerminalRanger
```
```
cd TerminalRanger
sudo make install
```
Everything installs to `/usr/local/bin` so `sudo` is required when running the `make install`.
