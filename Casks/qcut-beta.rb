cask "qcut-beta" do
  version "0.1.0-beta.6"
  sha256 "b457be59f3dfe97a6ecda8dd899d9afb98564f18f86518a0c559494c8e85966e"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-darwin-aarch64.dmg"
  name "qcut (Beta)"
  desc "Cross-platform video editor"
  homepage "https://github.com/ieee0824/qcut"

  depends_on arch: :arm64

  app "qcut.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/qcut.app"]
  end

  conflicts_with cask: "qcut"
end
