cask "c4mux" do
  version "0.26.10"
  sha256 "092b2603abdc2cb54922acbbd5198c6ab1bfe5785859e401fadb3e9375c7a042"

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
