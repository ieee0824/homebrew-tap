cask "qcut-beta" do
  version "0.1.0-beta.8"
  sha256 "54fc73cee9fafb40d34e147b12aa43b2015f6e183dc6ea775a2193be83b1afd8"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-darwin-aarch64.dmg"
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
