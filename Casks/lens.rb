cask "lens" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "f2bb11fccdd1a46fedb52ecbf4e0e3bda5bab8837d7716d1e400ee9ab7c8d6e2",
         intel: "f7f07e097a4a2f98d2ab0f05855de190435de07d871789540f74466d1872784a"

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
