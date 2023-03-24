cask "lens" do
  arch arm: "-arm64"

  version "6.4.10"
  sha256 arm:   "c9bb27ca7cb31d7ac9195aef4074b9b88746ebec8e242ae8b7ec9cfa092ed112",
         intel: "096324f60a72ad71b44ec16b180fd3f2965755f17610b2296054a456f86da8a9"

  url "https://github.com/agologan/lens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://github.com/agologan/lens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
