class Drumkit < Formula
  desc "Low-latency TUI MIDI drum sampler for electronic drum kits"
  homepage "https://github.com/backmeupplz/drumkit"
  url "https://github.com/backmeupplz/drumkit/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "82749b5ef84a48f546ff6b8a835d4cbcb072c60e82cc98f6b706c65dc6138904"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drumkit --version")
  end
end
