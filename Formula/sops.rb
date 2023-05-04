class Sops < Formula
  desc "Editor of encrypted files"
  homepage "https://github.com/agologan/sops"
  url "https://github.com/agologan/sops/archive/v3.7.4.tar.gz"
  sha256 "d2e6206f9fa9a2181e20d04fbc1d52376b1bed3f88cdbe0ac2d00f9e64ef5be2"
  license "MPL-2.0"
  head "https://github.com/agologan/sops.git", branch: "master"

  bottle do
    root_url "https://github.com/agologan/homebrew-tap/releases/download/sops-3.7.4"
    sha256 cellar: :any_skip_relocation, ventura:      "51df84d9101cf643fd7e99f2fe57270191c66d0be06cd00686a8df758cb5f735"
    sha256 cellar: :any_skip_relocation, monterey:     "3ca33b08a5bb66646dfb65cfaacf620705c7976eb5e4143a9e2657a1ba6b9fe1"
    sha256 cellar: :any_skip_relocation, big_sur:      "4326c924f8cc92562b2feb76c5861913195cbe8453583b26d5af2d84423e9d69"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "014f9550cdde07a83495a97dcef28133963a082066087d416d78d2d6206d34d7"
  end

  depends_on "homebrew/core/go" => :build

  def install
    system "go", "build", "-o", bin/"sops", "go.mozilla.org/sops/v3/cmd/sops"
    pkgshare.install "example.yaml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sops --version")

    assert_match "Recovery failed because no master key was able to decrypt the file.",
      shell_output("#{bin}/sops #{pkgshare}/example.yaml 2>&1", 128)
  end
end
