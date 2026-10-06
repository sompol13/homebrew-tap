class Lockin < Formula
  desc "Focus timer for the terminal with macOS notifications"
  homepage "https://github.com/sompol13/lockin"
  url "https://github.com/sompol13/lockin/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ba90b97473b24fabbab0764bbbe88fe7d30e16157844097b1bb88c5ae836cbf0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/lockin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lockin --version")
  end
end
