class DotnetCoreSdkAT3 < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/ac399dfa-04e1-49cf-be75-7112a9eec68f/60b1ca435b12e7b8beb6bb39b9cdf1c6/dotnet-sdk-3.1.402-osx-x64.tar.gz"
  version "3.1.402"
  sha256 "222d4647e8af34bc948d74df6235ea9fec14e0974a0e9cda62090b9eef44243d"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
