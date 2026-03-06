class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.0/pmaid-darwin-arm64.tar.gz"
      sha256 "e22a5b704e37497c9d48b99ab0641a5f5261bcb2a4f32bbe1cf305b00ea058de"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.0/pmaid-darwin-amd64.tar.gz"
      sha256 "10047298f780a8274d17363faa604a5b5d08ca7f30763396a31849c8852af0d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.0/pmaid-linux-arm64.tar.gz"
      sha256 "7bfec0044a501475e3ed3adb93edf4de95b29e242b0ad41f744838701a8f65a7"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.0/pmaid-linux-amd64.tar.gz"
      sha256 "83e0cb1644ac7380207b4cad81bc20192ad343498ddabf006be377428926f385"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
