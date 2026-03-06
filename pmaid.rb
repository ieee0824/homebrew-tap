class Pmaid < Formula
  desc "AI-powered project management assistant"
  homepage "https://github.com/ieee0824/pmaid"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.1/pmaid-darwin-arm64.tar.gz"
      sha256 "32f1b6beab20bb548df8b26bef57ca86fa084dfad69d4be3722a7d2f05b6881c"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.1/pmaid-darwin-amd64.tar.gz"
      sha256 "7523544d0a181fe8d351b613554b7e6a26feb138f1311548cd72d3e7803f8f97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.1/pmaid-linux-arm64.tar.gz"
      sha256 "bf955af0201642653c5b9fca9799c55bde1acae2878591d7090b81c576d36261"
    else
      url "https://github.com/ieee0824/pmaid/releases/download/v0.2.1/pmaid-linux-amd64.tar.gz"
      sha256 "a2d663d530784da928c04c9a51914ba92d5c11151f7b2cf504c17ddeb2116d70"
    end
  end

  def install
    bin.install Dir["pmaid-*"].first => "pmaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pmaid --version", 2)
  end
end
