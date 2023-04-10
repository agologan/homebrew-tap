cask "lens" do
  arch arm: "-arm64"

  version "null"
  sha256 arm:   "Not",
         intel: "Not"

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
