class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/apricot/releases/download/v1.2.0/apricot_darwin_arm64.tar.gz"
      sha256 "ccede8d29cc21ddb4ecd5a596875009c769fa2ade7e9f4801958ffa0f8d5345e"
    end
  end

  def install
    bin.install "apricot"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
