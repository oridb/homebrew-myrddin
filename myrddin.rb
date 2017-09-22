class Myrddin < Formula
  desc "Myrddin Programming Language"
  homepage "https://myrlang.org"
  url "https://myrlang.org/releases/myrddin-0.2.0.tar.gz"
  sha256 "8bc27e683fdac14d43b4842b50c8d15f29211d8a50c9e691fe637a2878872486"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
