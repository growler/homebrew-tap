class Docbake < Formula
  desc "Multi-format Markdown documentation compiler"
  homepage "https://github.com/growler/docbake"
  version "0.2.1"
  license "MIT"

  depends_on "typst" => :recommended
  depends_on "d2" => :optional
  depends_on "mermaid-cli" => :optional
  depends_on "plantuml" => :optional

  on_macos do
    on_arm do
      url "https://github.com/growler/docbake/releases/download/v0.2.1/docbake-darwin-arm64.tar.gz"
      sha256 "40a59350611041943f35a5dbc3827d457db5e699ecbaa29db6579bff8f194b53"
    end
    on_intel do
      url "https://github.com/growler/docbake/releases/download/v0.2.1/docbake-darwin-amd64.tar.gz"
      sha256 "2f94decab1097fb1d8479ee1b0837eff395952b782123eabeece17254ce8761e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/growler/docbake/releases/download/v0.2.1/docbake-linux-amd64.tar.gz"
      sha256 "278bd365693d0ad6da89fb9399c03f429e844ef98b8bafb88f6934bb039539b2"
    end
  end

  def install
    bin.install "docbake"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/docbake --version")
  end
end
