# homebrew-ranwhat

Homebrew tap for [ranwhat](https://ranwhat.com), a flight recorder and secret scanner for AI coding agents.

```bash
brew install MatijaMiki/ranwhat/ranwhat
```

The formula installs the release from PyPI into its own virtualenv. ranwhat has no dependencies.

## Updating for a new release

1. Get the sdist URL and sha256: `curl -s https://pypi.org/pypi/ranwhat/<version>/json`
   (the `sdist` entry under `urls`).
2. Change `url` and `sha256` in `Formula/ranwhat.rb`.
3. `brew install --build-from-source MatijaMiki/ranwhat/ranwhat && brew test ranwhat`, then commit and push.
