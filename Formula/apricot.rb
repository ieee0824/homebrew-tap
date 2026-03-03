class Apricot < Formula
  desc "Docker Compose alternative for Apple Container"
  homepage "https://github.com/ieee0824/apricot"
  url "https://github.com/ieee0824/apricot/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "9df25c155ec12f4e2ba060202bb82cf9784d2dd1ff6d55a6d91db90a601b7bd2"
  license "MIT"
  head "https://github.com/ieee0824/apricot.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/apricot/"
  end

  test do
    assert_match "apricot #{version}", shell_output("#{bin}/apricot version")
  end
end
