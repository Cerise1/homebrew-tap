cask "pocketdex" do
  version "0.9.36"
  sha256 "56e3bf5fabce7ffca82517b5ba4e1ecc04fd81c5c7572e94a34aa220b24a4dfb"

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
