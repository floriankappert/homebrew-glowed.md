class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed"
  url "https://github.com/floriankappert/glowed/archive/refs/tags/v0.2.2-floriankappert.2.tar.gz"
  version "0.2.2-floriankappert.2"
  sha256 "fb7dbadecba42ffc3b839e01753845c895d179f43920a47c3981b4334abcbfdf"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed #{version}", shell_output("#{bin}/glowed --version")
  end
end
