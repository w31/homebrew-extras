class DotnetCoreSdkAT5 < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/0871336f-9a83-4ce4-80ca-625d03003369/2eb78456e0b106e9515dc03898d3867a/dotnet-sdk-5.0.100-osx-x64.tar.gz"
  version "5.0.100"
  sha256 "cbe223333a9724e83bd1448db30a8b5136a46a3d1c1a1f42c26e31b01523a389"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
