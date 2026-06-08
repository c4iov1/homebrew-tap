cask "c4mux" do
  version "0.26.11"
  sha256 "cc81464e7c1fad6cc24d7f49f51d0ffb863bee7d4fc0e890e6af13425d1d53fa"

  url "https://github.com/c4iov1/c4mux-releases/releases/download/v#{version}/C4Mux.dmg"
  name "C4Mux"
  desc "macOS developer tool for AI-assisted coding"
  homepage "https://github.com/c4iov1/c4mux-releases"

  depends_on macos: ">= :ventura"

  app "C4Mux.app"

  zap trash: [
    "~/Library/Application Support/com.c4.c4mux",
    "~/Library/Preferences/com.c4.c4mux.plist",
    "~/Library/Caches/com.c4.c4mux",
  ]
end
