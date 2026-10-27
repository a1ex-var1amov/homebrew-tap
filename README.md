# homebrew-tap

```bash
brew tap a1ex-var1amov/tap
brew install --cask opencast
```

The OpenCast cask is filled in from a notarized `./release.command` build (version + sha256 of the universal dmg). Until a GitHub Release exists with that dmg, the cask sha256 is a placeholder and `brew install` will fail checksum verification.
