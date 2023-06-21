cask "lens-6-4" do
  arch arm: "-arm64"

  version "6.4.15"
  sha256 arm:   "f9139176e036aa02721f6dabe6169f1080b1871b5458d0919ececf0574c60724",
         intel: "2268667c3015f1632953a5f609c8afdd67ec3bfc8684c886d88464ec5bfdd130"

  url "https://github.com/agologan/lens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "Lens"
  desc "Latest ARM-compatible build"
  homepage "https://github.com/agologan/lens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
