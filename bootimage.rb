class Bootimage < Formula
  desc "Tool to create bootable disk images from a Rust OS kernel."
  homepage "https://github.com/rust-osdev/bootimage"
  url "https://github.com/rust-osdev/bootimage/archive/refs/tags/v0.10.3.tar.gz"
  sha256 "21e9d52c6f6b5c94d5b66c0f6dfe1cfed49ad039a0675c0045e53ccc08a61735"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test bootimage`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
