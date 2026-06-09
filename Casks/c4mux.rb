cask "c4mux" do
  version "0.27.7"
  sha256 "14f5202130e30ae99fb329cc39530544bff2b923d86e9c94886fd60d96148415"

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
