class Myrddin < Formula
  desc "Myrddin Programming Language"
  homepage "https://myrlang.org"
  url "https://myrlang.org/releases/myrddin-0.1.tar.gz"
  sha256 "55ac615a619beadb415356aa6244036390871b1c0954e2e8b40163866c013296"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
