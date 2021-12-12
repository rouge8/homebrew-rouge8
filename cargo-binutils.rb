class CargoBinutils < Formula
  desc "Cargo subcommands to invoke the LLVM tools shipped with the Rust toolchain"
  homepage "https://github.com/rust-embedded/cargo-binutils"
  url "https://github.com/rust-embedded/cargo-binutils/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "8c98f9987721f6887f96ba2851d854aab46e3d674d18a004414cbf5da363becc"
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
    # software. Run the test with `brew test cargo-binutils`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
