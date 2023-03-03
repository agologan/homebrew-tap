cask "lens" do
  arch arm: "-arm64"

  version "6.4.0"
  sha256 arm:   "9d0a53d3e29ec7a6252b5cea7185dcf62b5c1718ada495e4f7ffb8993dfce90e",
         intel: "aeb6d79d96d626d13d55d9fae5ac8a65050c2d0a87247976c89600943b334c51"

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
