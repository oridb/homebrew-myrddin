class Myrddin < Formula
  desc "Myrddin Programming Language"
  homepage "https://myrlang.org"
  url "https://myrlang.org/releases/myrddin-0.3.1.tar.gz"
  sha256 "f3ca5e144894a537eb2c5ffc062b96f8988c78354431dbdefafc6c37977f36f5"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
