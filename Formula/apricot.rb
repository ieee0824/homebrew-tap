class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/apricot/releases/download/v#{version}/apricot_darwin_arm64.tar.gz"
      sha256 "e3d55e922821472b6fd13ab1fe44ef8d75a12a83933195851c0cc81a4e193d33"
    end
  end

  def install
    bin.install "apricot"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
