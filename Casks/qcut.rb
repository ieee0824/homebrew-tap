cask "qcut" do
  version "0.2.1"
  sha256 "74f27c4b1cf22ef0850288bb2c34ef14be4320327be90e295f7033a1d578e4f9"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-v#{version}-darwin-aarch64.dmg"
  name "qcut"
  desc "Cross-platform video editor"
  homepage "https://github.com/ieee0824/qcut"

  depends_on arch: :arm64

  app "qcut.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/qcut.app"]
  end
end
