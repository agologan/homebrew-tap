cask "lens" do
  arch arm: "-arm64"

  version "6.4.1"
  sha256 arm:   "83d41d651f694738b64688844042ddbcdaebbded1a759842ab2addbaec4289b5",
         intel: "a92a5db903f26624987dea5a861f3d42460d3bbffc867b1c8e889f9bbbb90469"

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
