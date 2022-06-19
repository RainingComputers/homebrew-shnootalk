class Shtkc < Formula
  desc "ShnooTalk is a new programming language"
  homepage "https://github.com/RainingComputers/shnootalk"
  url "https://github.com/RainingComputers/ShnooTalk/archive/refs/tags/0.2.0-alpha.tar.gz"
  sha256 "a24e2491f0cfa0bdc75b1423a97a15599ba5b98d389dd3b8a3b1c00e23e4efab"
  license "MIT"

  depends_on "llvm@12"

  def install
    system "make", "build", "-j", "4"
    build_name = File.read("build-name.txt").strip
    bin.install "bin/#{build_name}/shtkc"
  end

  test do
    system "shtkc", "-version"
  end
end
