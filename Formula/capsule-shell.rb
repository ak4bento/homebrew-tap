class CapsuleShell < Formula
  desc "AI terminal assistant ala Warp, written in Go"
  homepage "https://github.com/ak4bento/capsule-shell"
  url "https://github.com/ak4bento/capsule-shell/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b8f0d2315dd24f2d90aa427a9eea5e9cfe591a06459b7bbdcde7d19b50e7c102"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/capsule-shell --help")
  end
end

