cask "pocketdex" do
  version "0.9.41"
  sha256 "86393506e4ba4828b40947ec94429530f11d7341cb35016fe25fa4ba9e51a9d1"

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
