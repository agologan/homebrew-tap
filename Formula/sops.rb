class Sops < Formula
  desc "Editor of encrypted files"
  homepage "https://github.com/agologan/sops"
  url "https://github.com/agologan/sops/archive/v3.7.4.tar.gz"
  sha256 "d2e6206f9fa9a2181e20d04fbc1d52376b1bed3f88cdbe0ac2d00f9e64ef5be2"
  license "MPL-2.0"
  head "https://github.com/agologan/sops.git", branch: "master"

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
