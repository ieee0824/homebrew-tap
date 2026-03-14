cask "qcut-beta" do
  version "0.3.0-beta.1"
  sha256 "35753b2b16d8690043bd5343d4d38091ac49f30bc801754525a2eba29666b0a8"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-v#{version}-darwin-aarch64.dmg"
  name "qcut (Beta)"
  desc "Cross-platform video editor"
  homepage "https://github.com/ieee0824/qcut"

  depends_on arch: :arm64

  app "qcut-beta.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/qcut-beta.app"]
  end
end
