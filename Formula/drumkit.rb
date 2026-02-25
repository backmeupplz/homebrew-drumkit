class Drumkit < Formula
  desc "Low-latency TUI MIDI drum sampler for electronic drum kits"
  homepage "https://github.com/backmeupplz/drumkit"
  url "https://github.com/backmeupplz/drumkit/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1279a7ade64eea7d4df46850ff5a6d1b37ddd3f14419162c542cb37890831c5d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drumkit --version")
  end
end
