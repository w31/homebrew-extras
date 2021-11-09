class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/5ccdb916-531f-4064-84e8-5475b273a4de/80dcfa0c2eb528f8b0e7c313ed36f4f1/dotnet-sdk-5.0.403-osx-x64.tar.gz"
  version "5.0.403"
  sha256 "a3d7bd454882ab97d6de7278adbea08e4a13af2501a3ababa5ef3fb71ef278ce"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
