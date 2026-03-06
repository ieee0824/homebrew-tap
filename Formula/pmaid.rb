class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.4/pmaid-darwin-arm64.tar.gz"
      sha256 "c75511074e684b47c68e1da106f106238e374ec09b344651e94512458d04affa"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.4/pmaid-darwin-amd64.tar.gz"
      sha256 "5b56a12cff61f46cf45879a23b3a2e67c007c6dedb2c1512ec5f5d8528616a46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.4/pmaid-linux-arm64.tar.gz"
      sha256 "7ca30e630c8a9e28ace59a64a33c88afa3f2c16e30433ddd787db0a2de2c6020"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.4/pmaid-linux-amd64.tar.gz"
      sha256 "fc4a9164379ddc8b422ce1b8013ebe4221bc6379f60f5bc2915446d061649300"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
