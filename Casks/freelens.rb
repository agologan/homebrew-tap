cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-blue"
  sha256 arm:   "7692f1774b0de2fdad8d4578c986f00dea768bd7efbb3219ceb46acab0a4a018",
         intel: "8e6b70faea1718c35560f0219bcb991e350b025aec3d45dac2f66af5f5ec5887"

  url "https://github.com/agologan/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://github.com/agologan/freelens/"

  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
