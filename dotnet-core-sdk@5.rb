class DotnetCoreSdkAT5 < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/c0cafea0-6f76-407a-8c70-175c25e701d8/de9cc8367c469fa7eaaf5a7fb4aaf08d/dotnet-sdk-5.0.100-rc.2.20479.15-osx-x64.tar.gz"
  version "5.0.100-rc2"
  sha256 "ec848f8f83c5ec88f4d3bad061121569bffa484cae9046b1d9a44a88d243b421"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
