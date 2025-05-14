# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CapsuleShell < Formula
  desc "AI terminal assistant ala Warp, written in Go"
  homepage "https://github.com/ak4bento/capsule-shell"
  url "https://github.com/ak4bento/capsule-shell/releases/download/v0.1.0/capsule-shell_darwin_amd64.tar.gz"
  sha256 "c693085c4d6c1302d13a4eb57db5d13690e035ebe1efa599af56c8538b81ee0e"
  license "MIT"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    bin.install "capsule-shell"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test capsule-shell`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "#{bin}/capsule-shell", "--help"
  end
end
