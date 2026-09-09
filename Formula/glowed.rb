class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed.md"
  url "https://github.com/floriankappert/glowed.md/archive/refs/tags/v0.2.2-floriankappert.15.tar.gz"
  version "0.2.2-floriankappert.15"
  sha256 "cbe8e79bce5b73aae56fa0668d464cdd153462f4c9e772aebbfa047e772179bd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed.md #{version}", shell_output("#{bin}/glowed --version")
  end
end
