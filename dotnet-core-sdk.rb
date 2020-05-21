class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/c5449411-0257-4483-82fa-d4a6bf017e4f/da5635f42e11cb2c911a0e9a46025c06/dotnet-sdk-3.1.300-osx-x64.tar.gz"
  version "3.1.300"
  sha256 "5ec411105fa8bfd45f839b815508be1ecba14e962ab74e3c32a2877b83a9c8a3"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
