class Myrddin < Formula
  desc "Myrddin Programming Language"
  homepage "https://myrlang.org"
  url "https://myrlang.org/releases/myrddin-0.1.1.tar.gz"
  sha256 "8d15ccdec8a1c60d1b7174903a7d0f4d7f80053614843375479e19426394024a"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
