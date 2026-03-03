class Vpp2txt < Formula
  desc "Convert Voice Peak (.vpp) project files to text"
  homepage "https://github.com/ieee0824/vpp2txt"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/vpp2txt/releases/download/v1.0.4/vpp2txt-darwin-arm64"
      sha256 "7d2097405f0279fdca5d60fe3ab5e62f692a3837c73f27ba01479808d19aa331"
    else
      url "https://github.com/ieee0824/vpp2txt/releases/download/v1.0.4/vpp2txt-darwin-amd64"
      sha256 "ff8fcb9656890831236042b3154fede605a4cf346fc3588eb844d54580a3ee9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ieee0824/vpp2txt/releases/download/v1.0.4/vpp2txt-linux-arm64"
      sha256 "24e04cf9847f2b937ee0b72ba888078f4c6c1a4a0c4eb4fbd8cbbe5d43780eea"
    else
      url "https://github.com/ieee0824/vpp2txt/releases/download/v1.0.4/vpp2txt-linux-amd64"
      sha256 "c7b6f540eb991b1c3dd98d3ba62574487c77dfa422849092d124b3a648516035"
    end
  end

  def install
    bin.install Dir["vpp2txt-*"].first => "vpp2txt"
  end

  test do
    assert_match "vpp2txt", shell_output("#{bin}/vpp2txt -version")
  end
end
