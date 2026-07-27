class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/apricot/releases/download/v1.1.0/apricot_darwin_arm64.tar.gz"
      sha256 "91e8a4a0a83bb658ae08f8fa08f75af0fde168ba1c167c80f62d5b93a3ac0f8c"
    end
  end

  def install
    bin.install "apricot"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
