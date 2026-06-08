cask "c4mux" do
  version "0.27.0"
  sha256 "095e5b35a5f3d711b6a5032d9bb85ced8ca79be905372ce3dd8db25ae4f019a6"

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
