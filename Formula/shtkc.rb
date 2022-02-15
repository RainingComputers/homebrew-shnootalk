class Shtkc < Formula
  desc "ShnooTalk is a new programming language"
  homepage "https://github.com/RainingComputers/shnootalk"
  url "https://github.com/RainingComputers/ShnooTalk/archive/refs/tags/0.1.1-alpha.tar.gz"
  sha256 "54aee149273a4a728f7a4e618a623e5d9b733998f81389091d1f12b818b05c83"
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
