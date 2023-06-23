cask "lens" do
  arch arm: "-arm64"

  version "6.5.2"
  sha256 arm:   "0a64bf42b18cb2ca71a39e7b36b25410dfdc062500fbace4e3ac50e96b66974e",
         intel: "fee06c828f21330c769fe09aea46ded59c51890f00b6400733d96e9543f4dad2"

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
