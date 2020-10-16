class DotnetCoreSdkAT3 < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/5e3b8ffc-c0c3-4d42-b207-87b91b678cf1/3994f505b0b91ed3858718c6dcd8cf9b/dotnet-sdk-3.1.403-osx-x64.tar.gz"
  version "3.1.403"
  sha256 "fe1cb8607ba7bb28631c4052da56b64467d70d6461f28adfedf3850fe71878d0"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
