cask "lens" do
  arch arm: "-arm64"

  version "6.4.6"
  sha256 arm:   "11e834981c52767b29f7af677c4de2e885fa82cadfe44e01c8eb33f6c1104ab4",
         intel: "615a1cf8c3577b12bfc01c83e8fafa961d7de876ab969d4b143fa87b90f63930"

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
