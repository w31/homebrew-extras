class Castget < Formula
  desc "Command-line podcast downloader"
  homepage "https://castget.johndal.com/"
  url "https://savannah.nongnu.org/download/castget/castget-2.0.1.tar.bz2"
  version "2.0.1"
  sha256 "438b5f7ec7e31a45ed3756630fe447f42015acda53ec09202f48628726b5e875"

  depends_on "gettext" => :build
  depends_on "glib" => :build
  depends_on "pkg-config" => :build
  uses_from_macos "curl" => :build
  uses_from_macos "libxml2" => :build

  def install
    system "./configure", "--disable-id3lib",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/castget", "-V"
  end
end
