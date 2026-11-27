# Homebrew Tap

Homebrew tap for machineyearningengineer CLI tools.

## Install `rdrop`

```bash
brew tap machineyearningengineer/tap
brew install rdrop
```

Upgrade later with:

```bash
brew update
brew upgrade rdrop
```

## Install `job-harness`

```bash
brew install machineyearningengineer/tap/job-harness   # jh CLI (macOS and Linux)
```

## Formulae and casks

| Name | Type | Description |
| --- | --- | --- |
| `rdrop` | Formula | Find, review and organize Raindrop bookmarks from a shell or agent |
| `job-harness` | Formula | Local-first job search ledger and MCP server; installs `jh` and `job-harness` from prebuilt release binaries |

## Maintenance

Formula files live in `Formula/`, casks in `Casks/`.

`job-harness` needs no manual bumps: its release workflow rewrites `version` and every
`sha256 "..." # <target>` line in `Formula/job-harness.rb` (and `Casks/job-harness.rb`)
from the release's `SHA256SUMS`, then pushes to `main` with a deploy key scoped to this
repository. Keep the trailing `# <target>` comments; they are how it finds each checksum.

For a new `raindrop-cli` release:

1. Update `Formula/rdrop.rb` with the new tag URL.
2. Update the `sha256` for the source archive.
3. Run `brew install --build-from-source machineyearningengineer/tap/rdrop` after the tap update is available, then `brew test rdrop`.
4. Commit and push the formula update.
