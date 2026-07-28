class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  version "1.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/apricot/releases/download/v1.2.3/apricot_darwin_arm64.tar.gz"
      sha256 "d0f30b4a993a7f355fff8935760ee8b58d1518f02e854a46e8d1bfe398c6bb83"
    end
  end

  def install
    bin.install "apricot"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
