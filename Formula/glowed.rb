class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed.md"
  url "https://github.com/floriankappert/glowed.md/archive/refs/tags/v0.2.2-floriankappert.4.tar.gz"
  version "0.2.2-floriankappert.4"
  sha256 "40ad797f854d654a796621af04d52802a341edfed2e5d76c75de2b0c4b317435"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed.md #{version}", shell_output("#{bin}/glowed --version")
  end
end
