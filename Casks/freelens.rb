cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-blue"
  sha256 arm:   "4c541a34234e89291d034988554ec7e636840d8f83985bc0611e81ac2b4306be",
         intel: "188825c3beecccdf6d4f6f8fdd12c4a3f993975a205ac93053536ae500d13c4a"

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
