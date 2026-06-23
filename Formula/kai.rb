class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.4"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai-releases/releases/download/v0.1.4/kai-macos-aarch64.tar.gz"
  sha256 "a375ca5798af86ac85e1b4469b0699804a420d8b98c699a0b58da022107d769e"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
