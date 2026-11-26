# growler/homebrew-tap

Homebrew formulas for tools by growler.

## docbake

Homebrew loads formulas only from trusted taps. Trust the tap, then install
docbake:

```
brew trust growler/tap
brew install growler/tap/docbake
```

The formula installs Typst for PDF output. To also install the diagram tools,
add the options:

```
brew install growler/tap/docbake --with-d2 --with-mermaid-cli --with-plantuml
```

The docbake release workflow updates `Formula/docbake.rb` for each release.
