class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/515b77f4-4678-4b6f-a981-c48cf5607c5a/24b33941ba729ec421aa358fa452fd2f/dotnet-sdk-3.1.101-osx-x64.tar.gz"
  version "3.1.101"
  sha256 "7f0b2f562b66a266b3a589d36522379e2214c28aca2ae318e28608f878ef0246"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
