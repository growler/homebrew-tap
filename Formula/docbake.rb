class Docbake < Formula
  desc "Multi-format Markdown documentation compiler"
  homepage "https://github.com/growler/docbake"
  license "MIT"

  depends_on "typst" => :recommended
  depends_on "d2" => :optional
  depends_on "mermaid-cli" => :optional
  depends_on "plantuml" => :optional

  on_macos do
    on_arm do
      url "https://github.com/growler/docbake/releases/download/v0.2.2/docbake-darwin-arm64.tar.gz"
      sha256 "ea2887766e10b8ebd9ab42e6e2718a6101e1068add763480fec011b249ea5e1d"
    end
    on_intel do
      url "https://github.com/growler/docbake/releases/download/v0.2.2/docbake-darwin-amd64.tar.gz"
      sha256 "a93956d4411e9c43b9d2a2b6ec0254840cb0d808ae359d33cc1df3090f1af08f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/growler/docbake/releases/download/v0.2.2/docbake-linux-amd64.tar.gz"
      sha256 "e59c61bf7034933accb675494eb4e9cdb409cf100561b59d6e6a8b5162519498"
    end
  end

  def install
    bin.install "docbake"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/docbake --version")
  end
end
