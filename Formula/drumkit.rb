class Drumkit < Formula
  desc "Low-latency TUI MIDI drum sampler for electronic drum kits"
  homepage "https://github.com/backmeupplz/drumkit"
  url "https://github.com/backmeupplz/drumkit/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "b5c3bbde76cc73473a1379e3be511dee00bb34e2e53affddffd8946c31fb3ef2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drumkit --version")
  end
end
