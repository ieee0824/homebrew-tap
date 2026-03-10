cask "qcut" do
  version "0.1.0"
  sha256 "be42c99b208b3da71c1f26c5dbcca4e5ba3a24b7cf4f49d6fd17a963c1281329"

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
