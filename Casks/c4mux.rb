cask "c4mux" do
  version "0.26.6"
  sha256 "95013836453f13996d8f52d70bfbe5025c6acc2f762416584f9a82c6193da907"

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
