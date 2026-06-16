class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.1"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai-releases/releases/download/v0.1.1/kai-macos-aarch64.tar.gz"
  sha256 "715f77daf05d0efae7e5751d2a1f710500243eddaed138e99ca25baf561c7edd"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
