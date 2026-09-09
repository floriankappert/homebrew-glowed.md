# homebrew-glowed.md

Homebrew tap for Florian Kappert's builds.

```bash
brew tap floriankappert/glowed.md
```

Homebrew derives the repository name from the tap name (`homebrew-<tap>`), which
is why this repository is called `homebrew-glowed.md`.

## Formulae

### glowed

[glowed.md](https://github.com/floriankappert/glowed.md), a distribution of
[glowed](https://github.com/khw1031/glowed) — a Ghostty-oriented terminal TUI Markdown
browser/editor by [@khw1031](https://github.com/khw1031).

```bash
brew install floriankappert/glowed.md/glowed
```

- Source: https://github.com/floriankappert/glowed.md
- Binary: `glowed` (drop-in replacement for the upstream build; the project is named glowed.md)
- Versioning: `vX.Y.Z-floriankappert.N`, where `vX.Y.Z` is the upstream base
- Use the fully-qualified name: the upstream tap carries a formula named `glowed`
  too, so a bare `brew install glowed` is ambiguous when both taps are installed

Upstream's contribution model asks downstream builds to be published as their own tap
rather than as pull requests; see the upstream
[CONTRIBUTING.md](https://github.com/khw1031/glowed/blob/main/CONTRIBUTING.md).
