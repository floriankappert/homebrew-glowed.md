class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed.md"
  url "https://github.com/floriankappert/glowed.md/archive/refs/tags/v0.2.2-floriankappert.16.tar.gz"
  version "0.2.2-floriankappert.16"
  sha256 "466e25f3f302717a2d60b564a0740152bc4496a18b9d64f86701e087a818686d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed.md #{version}", shell_output("#{bin}/glowed --version")
  end
end
