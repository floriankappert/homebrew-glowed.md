class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed"
  url "https://github.com/floriankappert/glowed/archive/refs/tags/v0.2.2-floriankappert.1.tar.gz"
  version "0.2.2-floriankappert.1"
  sha256 "a25b1cda831c5023433c313b46cdf8bbe5676810fb057dfc7c798f935bcf910c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed #{version}", shell_output("#{bin}/glowed --version")
  end
end
