cask "qcut-beta" do
  version "0.2.1-beta.1"
  sha256 "938b8be88e3d3dece62ce33ae1e94b31689fbd744941fda38f71d3be60eebfba"

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
