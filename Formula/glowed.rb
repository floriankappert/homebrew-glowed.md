class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed.md"
  url "https://github.com/floriankappert/glowed.md/archive/refs/tags/v0.2.2-floriankappert.14.tar.gz"
  version "0.2.2-floriankappert.14"
  sha256 "300557141ef692a23172a3d8cc90b64cbc108b5019b1ad08d950a7514dcc8baa"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed.md #{version}", shell_output("#{bin}/glowed --version")
  end
end
