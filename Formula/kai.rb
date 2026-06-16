class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.2"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai-releases/releases/download/v0.1.2/kai-macos-aarch64.tar.gz"
  sha256 "07a0b158aa686b383bce080fadfe4dca6e061ada8da36e423ff61c8a9772c7ff"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
