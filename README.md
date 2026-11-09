# Nylzo for Homebrew and Scoop

Install the [Nylzo](https://github.com/misaon/nylzo) CLI on macOS, Linux and Windows.

## macOS and Linux

```sh
brew install misaon/nylzo/nylzo
```

Upgrade with `brew upgrade nylzo`.

## Windows

```powershell
scoop bucket add nylzo https://github.com/misaon/homebrew-nylzo
scoop install nylzo/nylzo
```

Upgrade with `scoop update nylzo`.

## How a release gets here

Every hour, [update.yml](.github/workflows/update.yml) checks for a new Nylzo release. It verifies the release workflow's cosign signature on `checksums.txt` and the build provenance of every archive for that tag, then writes the archive URLs and SHA-256 hashes into the formula and the manifest. A new version is committed only after it installs and runs on macOS, Linux and Windows. Homebrew and Scoop compare each download with those hashes.

To check an installed archive yourself, follow [Verify a release](https://github.com/misaon/nylzo/wiki/Verify-a-release). Report problems in the [Nylzo repository](https://github.com/misaon/nylzo/issues).
