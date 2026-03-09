cask "qcut-beta" do
  version "0.1.0-beta.5"
  sha256 "24f1962dd9f8c633c61a506fabc88c9ff268419b174e9c5800eb5a5f7aa856f8"

  url "https://github.com/ieee0824/qcut/releases/download/v#{version}/qcut-darwin-aarch64.dmg"
  name "qcut (Beta)"
  desc "Cross-platform video editor"
  homepage "https://github.com/ieee0824/qcut"

  depends_on arch: :arm64

  app "qcut.app"

  conflicts_with cask: "qcut"
end
