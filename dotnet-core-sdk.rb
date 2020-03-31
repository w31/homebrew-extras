class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/0f566b2b-47e6-484d-91e5-96d2e48c0466/342c321a2a040b62e0ecf186c4ec9d12/dotnet-sdk-3.1.201-osx-x64.tar.gz"
  version "3.1.201"
  sha256 "9a75b2bf21eb4bd37dc89c218e4157bd077239168661ef13f61c739dfe6a896f"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
