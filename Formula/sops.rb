class Sops < Formula
  desc "Editor of encrypted files"
  homepage "https://github.com/agologan/sops"
  url "https://github.com/agologan/sops/archive/v3.7.3-64560162a.tar.gz"
  sha256 "aa9dd039bd624a15186e59fd58cb09c52ab827bba587581db9d1b5c7e41d1e90"
  license "MPL-2.0"
  head "https://github.com/agologan/sops.git", branch: "master"

  depends_on "homebrew/core/go" => :build

  def install
    system "go", "build", "-o", bin/"sops", "go.mozilla.org/sops/v3/cmd/sops"
    pkgshare.install "example.yaml"
  end

  test do
    assert_match "Recovery failed because no master key was able to decrypt the file.",
      shell_output("#{bin}/sops #{pkgshare}/example.yaml 2>&1", 128)
  end
end
