class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/271e75d7-5d38-4e7c-978f-6871bed679c8/fab96db72433839ad0353c6dec2692e3/dotnet-sdk-3.1.302-osx-x64.tar.gz"
  version "3.1.302"
  sha256 "66378cdab218ffe1684dddeb82d7ff9278abf1104a52dd67d87bb3d6ce6c8ff8"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
