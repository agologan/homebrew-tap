cask "lens" do
  arch arm: "-arm64"

  version "6.4.5"
  sha256 arm:   "db2531a4c091f78f3b2d354ddd72d6f090c90d401ab2c94adab3b095c04d45a0",
         intel: "37e938434b638327bf9a235e06c3da6a871cb47df2fbb302424c8d497b22f9b3"

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
