class Shtkc < Formula
  depends_on "llvm@12"

  desc "ShnooTalk is a new programming language"
  homepage "https://github.com/RainingComputers/shnootalk"
  url "https://github.com/RainingComputers/ShnooTalk/archive/refs/tags/0.1.0-alpha.tar.gz"
  sha256 "b4403de5fdae222d1a583b7b5279cafeb5e9254365f3319e76af61ad92cdfbbb"
  license "MIT"
  
  def install   
    system "make", "build", "-j", "4"
    build_name = File.read("build-name.txt").strip
    bin.install "bin/#{build_name}/shtkc"
  end
  
  test do
    system "shtkc", "-version"
  end
end
