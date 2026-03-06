class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.2/pmaid-darwin-arm64.tar.gz"
      sha256 "c0317aad6cca1276296dae8573e3b09a53d5d08aa8314fdc4e8542ce36fbb96b"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.2/pmaid-darwin-amd64.tar.gz"
      sha256 "e9a15ab71102875b0670799ca9c322d57e03285858801f856e42ce3d201a9edd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.2/pmaid-linux-arm64.tar.gz"
      sha256 "175271f12d91ee747f7faa5d0dfa69eef9f5d332f6d568b04655ebc3c176af54"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.2/pmaid-linux-amd64.tar.gz"
      sha256 "183bfc9e1d780f73d66e3fd6e3a34f74dcd0be969d0dafb29e0fd90aebeedec6"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
