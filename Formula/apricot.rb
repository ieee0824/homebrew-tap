class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/apricot/releases/download/v1.2.1/apricot_darwin_arm64.tar.gz"
      sha256 "2bf081564525dbc03e0bca3c1e0c6e68c367ac364ada1ec9b3d0301d03eb4566"
    end
  end

  def install
    bin.install "apricot"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
