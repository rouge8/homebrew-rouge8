require "formula"

class Castnow < Formula
  homepage "https://github.com/xat/castnow"
  url "http://registry.npmjs.org/castnow/-/castnow-0.4.7.tgz"
  sha1 "155c1314c3f70d2b5ef601164b0c39beb1e33461"
  head "https://github.com/xat/castnow.git"

  depends_on "node"

  def install
    system "#{HOMEBREW_PREFIX}/bin/npm", "install"
    libexec.install Dir["*"]
    (bin/"castnow").write <<-EOS.undent
      #!/bin/sh
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/index.js" "$@"
    EOS
  end

  test do
    system "#{bin}/castnow", "--help"
  end
end
