require "language/go"

class Today < Formula
  desc "RALF companion for the CLI"
  homepage "https://github.com/darmiel/today"
  url "https://github.com/darmiel/today/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "438b26bf1c146bfcb454eab5564645fe6b83f5ba50b5d391f690f05cfd72ab72"
  license ""
  revision 1
  head "https://github.com/darmiel/today.git"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/darmiel/today"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-o", "#{bin}/today"
    end
  end

  test do
    system "true"
  end

end
