cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-blue"
  sha256 arm:   "13d728ada9a48afdc74b9674e8db538083bda633b56acd652f4ef57ca72d3cba",
         intel: "5032c24f1a073f2aa2987810664c7066b68af38729bcf80a23a306d3f87c4b57"

  url "https://github.com/agologan/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://github.com/agologan/freelens/"

  depends_on macos: :ventura

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freelens.freelens.sfl*",
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
    "~/Library/Preferences/app.freelens.Freelens.plist",
  ]
end
