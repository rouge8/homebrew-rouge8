class DockerShowContext < Formula
  desc "Show where time is wasted during the context upload of `docker build`"
  homepage "https://github.com/pwaller/docker-show-context"
  url "https://github.com/pwaller/docker-show-context/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "d27bd6e3dc8024d95886394e12203a6e1bbafb4839537e47df60a1856547f0a3"
  license "MIT"
  head "https://github.com/pwaller/docker-show-context.git"

  depends_on "go" => :build

  def install
    ENV["GO111MODULE"] = "on"
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Top 10 directories by time spent:", shell_output("#{bin}/docker-show-context")
  end
end
