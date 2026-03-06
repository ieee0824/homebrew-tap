class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.3/pmaid-darwin-arm64.tar.gz"
      sha256 "3e6b4bbc9c524992d6ae64f80aa5fdfd6ae7dd7200ddb065fb2f4cbac3cf2301"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.3/pmaid-darwin-amd64.tar.gz"
      sha256 "90f0bd2fb4306f98cd6a216f1897e3d6fd6adb3eb49e2fcdf461d8e7c5580aad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.3/pmaid-linux-arm64.tar.gz"
      sha256 "d4f4ed987c0a5e6b69f1b05d1d670d2344483283ae49d5bad2633abb2225bf5b"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.3.3/pmaid-linux-amd64.tar.gz"
      sha256 "85b7417cb2f1ebd19e7555fd6f030da07fcfc810b5ff7c03bf95e2193a85be14"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
