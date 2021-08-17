class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/e5672550-7ab9-439a-8dd4-d5b02608abe3/d1b27ba9dcfa96cd891dde40a406fdc3/dotnet-sdk-5.0.400-osx-x64.tar.gz"
  version "5.0.400"
  sha256 "2ab252ba008c8cd0bc53f6ece486085dacf0b4a501c0ede1e312ac16f7d7d2cc"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
