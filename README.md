# Homebrew Tap for Minitap

Homebrew formulae and casks for [Minitap](https://github.com/minitap-ai) tools.

## minitest-cli has moved to uv

`minitest-cli` is no longer published through Homebrew: the formula here is
frozen at 0.24.0 and disabled. Install the current CLI with uv instead (it
keeps itself up to date):

```bash
brew uninstall minitest-cli   # if you installed it from this tap
uv tool install minitest-cli
```

See the [minitest-cli README](https://github.com/minitap-ai/minitest-cli#installation)
for the one-line installer.

## Available Casks

| Cask | Description |
|------|-------------|
| `minitest-connector` | Lets Minitest test devices reach apps inside your private network |
