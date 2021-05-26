class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/4b4b03b6-3120-442a-89df-267cc3a658f2/8aa05160bc779782b1222af092c864a7/dotnet-sdk-5.0.300-osx-x64.tar.gz"
  version "5.0.300"
  sha256 "846dc35dbef020e8cfcf3782719efae217693913fe17cabcce0867fd9907bb1d"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
