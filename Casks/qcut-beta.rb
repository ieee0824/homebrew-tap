cask "qcut-beta" do
  version "0.1.0-beta.7"
  sha256 "989b635160715451d41a37f7faff89b966020a2a625a036f29ed630343000535"

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

  conflicts_with cask: "qcut"
end
