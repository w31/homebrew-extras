class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/cecaa095-3254-4987-b105-6bb9b594a89c/df29881aea827565a96d5e47dc337749/dotnet-sdk-6.0.201-osx-x64.tar.gz"
  version "6.0.201"
  sha256 "c003f389cdaa1576956d49309515c596a980f4aff00f7d2b3bede70dfc2fb173"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  def post_install
    Dir.glob("#{share}/dotnet/**/*.dylib") do |file|
      system "/usr/bin/codesign", "-f", "-s", "-", file
    end
  end

  test do
    system bin/"dotnet", "version"
  end
end
