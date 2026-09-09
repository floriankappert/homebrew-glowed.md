class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed.md"
  url "https://github.com/floriankappert/glowed.md/archive/refs/tags/v0.2.2-floriankappert.13.tar.gz"
  version "0.2.2-floriankappert.13"
  sha256 "31df71e3edb816e555ad87d7e9780467dcdf2b28b623017a7090642328621d87"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed.md #{version}", shell_output("#{bin}/glowed --version")
  end
end
