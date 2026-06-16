class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai-releases/releases/download/v0.1.3/kai-macos-aarch64.tar.gz"
  sha256 "384209f087acb4a817657484b40aac9722c853dab9592a5cf3f699ac4aadd545"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
