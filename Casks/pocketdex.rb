cask "pocketdex" do
  version "0.9.37"
  sha256 "0c86a339eb264ddc8737d623d2d74667f9a2d99fdbc6f1eb0a1cdfd7669fea7c"

  url "https://github.com/Cerise1/PocketDex/releases/download/v#{version}/PocketDex-macOS-v#{version}.zip",
      verified: "github.com/Cerise1/PocketDex/"
  name "PocketDex"
  desc "Menu bar companion for Codex workflows"
  homepage "https://github.com/Cerise1/PocketDex"

  auto_updates true

  app "PocketDexApp.app"

  uninstall quit: "magically.PocketDexApp"

  zap trash: [
    "~/Library/Application Support/PocketDex",
    "~/Library/Caches/magically.PocketDexApp",
    "~/Library/Preferences/magically.PocketDexApp.plist",
    "~/Library/Saved Application State/magically.PocketDexApp.savedState",
    "~/Library/Logs/PocketDex",
  ]
end
