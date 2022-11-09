class Shtkc < Formula
  desc "ShnooTalk is a new programming language"
  homepage "https://github.com/RainingComputers/shnootalk"
  url "https://github.com/RainingComputers/ShnooTalk/archive/refs/tags/0.3.0-alpha.tar.gz"
  sha256 "b03c544aed715ff9a9441010d265dd9838ec1e33a07724f64da3ac087a6abdf4"
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
