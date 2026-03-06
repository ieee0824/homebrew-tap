class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.1/pmaid-darwin-arm64.tar.gz"
      sha256 "d9491f8cbe68069da3ac871b4d61c51882ecbca61621d42f6a4cdac5fbeffd82"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.1/pmaid-darwin-amd64.tar.gz"
      sha256 "7eeeccc0abd0526d722af2f5773dece7300694c8be20478ff53a70208abf58b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.1/pmaid-linux-arm64.tar.gz"
      sha256 "ea50b10bb2055ac1683044507976d2f54794a0252dc66de2120efa6b145eaf69"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.1/pmaid-linux-amd64.tar.gz"
      sha256 "6ebaa43f044e4955c1645757f73ccdf6a7cca115ecf2750ef6820d924978c829"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
