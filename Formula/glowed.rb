class Glowed < Formula
  desc "Ghostty-oriented terminal TUI Markdown browser/editor"
  homepage "https://github.com/floriankappert/glowed"
  url "https://github.com/floriankappert/glowed/archive/refs/tags/v0.2.2-floriankappert.3.tar.gz"
  version "0.2.2-floriankappert.3"
  sha256 "b2381577489290eeee878b452c69f2d57618ecf7a0a3a9d7421d685fc32dff2b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags=-s -w -X main.version=#{version}", "-o", bin/"glowed", "./cmd/glowed"
  end

  test do
    assert_match "glowed #{version}", shell_output("#{bin}/glowed --version")
  end
end
