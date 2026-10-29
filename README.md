# Homebrew Tap for Minitap

Homebrew formulae and casks for [Minitap](https://github.com/minitap-ai) tools.

## minitest-cli is not published here

`minitest-cli` is installed with uv, and keeps itself up to date:

```bash
brew uninstall minitest-cli   # if you installed an old version from this tap
uv tool install minitest-cli
```

See the [minitest-cli README](https://github.com/minitap-ai/minitest-cli#installation)
for the one-line installer.

## Available Casks

| Cask | Description |
|------|-------------|
| `minitest-connector` | Lets Minitest test devices reach apps inside your private network |
