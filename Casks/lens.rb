cask "lens" do
  arch arm: "-arm64"

  version "6.5.2"
  sha256 arm:   "417663242666bc52f37e0b6e08724404162f12904c02a7cf5fa9807c9528e164",
         intel: "7ad006e327e3fa5d2220f78bc98663ffbfe1534dc6f93371ac31caa9c393ad4a"

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
