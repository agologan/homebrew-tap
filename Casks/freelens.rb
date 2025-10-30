cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-blue"
  sha256 arm:   "389e68dbd58c00cabb07422afc9f85143f4d4dfae188a71532348f92f6400c7e",
         intel: "8b9dc6d6c18c93e06a54bdbf514c6d7cb8b417ea1554a09301ca8143529a8af4"

  url "https://github.com/agologan/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://github.com/agologan/freelens/"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
