class Drumkit < Formula
  desc "Low-latency TUI MIDI drum sampler for electronic drum kits"
  homepage "https://github.com/backmeupplz/drumkit"
  url "https://github.com/backmeupplz/drumkit/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "ef80f300ff49f7ec7de4fabdce9eed5b78f64f48dd50d19aedbb3f2a93e06507"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drumkit --version")
  end
end
