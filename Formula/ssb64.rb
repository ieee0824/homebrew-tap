class Ssb64 < Formula
  desc "Screenshot to base64 clipboard tool for macOS"
  homepage "https://github.com/ieee0824/ssb64"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/ssb64/releases/download/v0.1.1/ssb64-darwin-arm64.tar.gz"
      sha256 "26a868ca2ca1c51e0682b1395ad7a4cc73c36ec000a4bed71bb72f1a4ba3ab18"
    end
  end

  def install
    bin.install "ssb64"
  end
end
