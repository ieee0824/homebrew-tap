cask "qcut" do
  version "0.2.0"
  sha256 "458b2ae40ae7ce9a3d6f2021bff0fe235bd2b046ce14fdf782319d9248cc3bff"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-darwin-aarch64.dmg"
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
