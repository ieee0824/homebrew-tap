class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.0/pmaid-darwin-arm64.tar.gz"
      sha256 "b45760818aaf6b8eb653e409f80a4f9eb1c8df64bc0f9ccf7c0089fe57b3add8"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.0/pmaid-darwin-amd64.tar.gz"
      sha256 "10a3c12c90f79d94f959fa77eadea3a8674cb02a5c4d9c9171ee414647e0fbb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.0/pmaid-linux-arm64.tar.gz"
      sha256 "32c0387683b7319eee27ae9a4cf9e2f28120e78904c9b53c4e2f20f24cc1c157"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.0/pmaid-linux-amd64.tar.gz"
      sha256 "68accd71dcc97a6d799d8697870f8712e78b6e16c189708efb16de424666a6d0"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
