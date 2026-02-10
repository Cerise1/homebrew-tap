cask "pocketdex" do
  version "0.9.3"
  sha256 "ed1376e2892af98f71f7bb4c74a9562df56dc45f715eb0165dbfd56505ba60fd"

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
