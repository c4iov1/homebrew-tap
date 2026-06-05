cask "c4mux" do
  version "0.26.0"
  sha256 "c8bd05e3b4b3887aaf472843a4ededcf2be8f5e29579477682d5ee2ca409ab44"

  url "https://github.com/c4iov1/c4mux/releases/download/v#{version}/C4Mux.dmg"
  name "C4Mux"
  desc "macOS developer tool for AI-assisted coding"
  homepage "https://github.com/c4iov1/c4mux"

  depends_on macos: ">= :ventura"

  app "C4Mux.app"

  zap trash: [
    "~/Library/Application Support/com.c4.c4mux",
    "~/Library/Preferences/com.c4.c4mux.plist",
    "~/Library/Caches/com.c4.c4mux",
  ]
end
