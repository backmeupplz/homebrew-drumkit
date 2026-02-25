class Drumkit < Formula
  desc "Low-latency TUI MIDI drum sampler for electronic drum kits"
  homepage "https://github.com/backmeupplz/drumkit"
  url "https://github.com/backmeupplz/drumkit/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "fedf0ff8c32b6c2378569b17362b330cf5662ecb3e56494d06d54cc915ad5296"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drumkit --version")
  end
end
