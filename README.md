# homebrew-memi

Homebrew tap for **[Mémoire Studio](https://github.com/sarveshsea/memi-studio)** — the native macOS agent shell for Codex, Claude Code, OpenCode, Hermes, Ollama, Gemini, and Mémoire-native.

## Install

```bash
brew install --cask sarveshsea/memi/memi-studio
```

That's it. Brew adds the tap implicitly the first time you reference a cask under it.

If you prefer to add the tap explicitly first:

```bash
brew tap sarveshsea/memi
brew install --cask memi-studio
```

## Update

```bash
brew upgrade --cask memi-studio
```

The cask carries `livecheck` against the [GitHub Releases](https://github.com/sarveshsea/memi-studio/releases) page, so `brew upgrade` picks up new stable versions automatically once the cask in this tap is bumped (typically same-day as a `v*` tag on memi-studio).

## Uninstall

```bash
brew uninstall --cask memi-studio
brew uninstall --zap --cask memi-studio   # also clears Application Support, caches, prefs
```

## What you get

- **Universal install path** — `brew` resolves the right architecture automatically (Apple Silicon arm64 / Intel x64)
- **Signed + notarized DMG** — Mémoire Studio is signed by Humyn LLC (Team ID `Z4ZUZ884U3`) and Apple-notarized. Gatekeeper accepts the app at install with no warnings
- **Auto-update aware** — the cask declares `auto_updates true` so Homebrew defers to the app's in-app updater (Tauri updater) for minor releases between cask bumps
- **Clean uninstall** — the `zap` block lists every Application Support / Caches / Prefs path the app touches

## What this tap is

A standard Homebrew third-party tap. The cask file lives at [`Casks/memi-studio.rb`](./Casks/memi-studio.rb) and follows the [official Homebrew Cask cookbook](https://docs.brew.sh/Cask-Cookbook). Bumps are mechanical: when memi-studio cuts a new release, this tap's `version` and `sha256` get updated to match.

## Maintenance

The cask is bumped manually for now (PR or direct push to main). A future iteration will run `brew bump-cask-pr` from CI on the memi-studio side after each successful release.

## Related

- App source: [sarveshsea/memi-studio](https://github.com/sarveshsea/memi-studio)
- Engine: [sarveshsea/m-moire](https://github.com/sarveshsea/m-moire)
- Releases (DMGs + checksums): [sarveshsea/memi-studio/releases](https://github.com/sarveshsea/memi-studio/releases)

## License

This tap repository: MIT.
The Mémoire Studio app itself: [FSL-1.1-ALv2](https://github.com/sarveshsea/memi-studio/blob/main/LICENSE) (Humyn LLC).
