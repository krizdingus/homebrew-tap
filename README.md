# krizdingus/homebrew-tap

Homebrew tap for krizdingus' projects.

## Available formulae

- `claudometer` — Claude usage monitor that drives a Cheap Yellow Display

## Install

    brew install krizdingus/tap/claudometer
    brew services start claudometer

Stop and restart with `brew services stop|restart claudometer`.

Logs:
- macOS: `$(brew --prefix)/var/log/claudometer.log`
- Linux: `journalctl --user -u homebrew.claudometer`
