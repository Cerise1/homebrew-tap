cask "pocketdex" do
  version "0.9.40"
  sha256 "25324a3ace20a2f3cb2c156cde588420d5cb0cbf8b41efdf845e3b8477fbc7d9"

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
