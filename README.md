# Homebrew tap for mcc

Formulae for [MCC — Mac Cache Cleaner](https://github.com/crisacm/mac-cache-cleaner).

## Install

```bash
brew tap crisacm/tap
brew install mcc
```

Or in one line:

```bash
brew install crisacm/tap/mcc
```

The formula installs a prebuilt binary for your architecture (Apple Silicon or
Intel), so no Go toolchain is needed. Check the installed version with
`mcc --version`.

The formula is generated and updated automatically by
[GoReleaser](https://goreleaser.com) when a `v*` tag is pushed to the main
repository, so do not edit `Formula/mcc.rb` by hand.
