cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-blue"
  sha256 arm:   "a9932a52e22d4621b2366fa6272ee0cf0c36618721fd5e63d923994ed13a3685",
         intel: "37119fc84b62380c8071fbee4c866b0f3a9e9c3f897ef3730b5e45a00956c327"

  url "https://github.com/agologan/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://github.com/agologan/freelens/"

  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
