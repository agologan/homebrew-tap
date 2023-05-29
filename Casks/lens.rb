cask "lens" do
  arch arm: "-arm64"

  version "6.5.0"
  sha256 arm:   "7c0ed40b0de954b00427c1d5446e9c36d07137e29b4070795bc9ec9fda0b659b",
         intel: "3d454b4090b2f59480f32558eeb2c1af630823611d952a0875c9b2a00b63a059"

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
