cask "qcut-beta" do
  version "0.3.0-beta.2"
  sha256 "b8a36afdc3448eb16c06de5474d85ac358915e7ac2de7caf5a8f4880f2ba64fd"

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
