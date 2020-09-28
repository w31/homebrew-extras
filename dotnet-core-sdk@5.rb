class DotnetCoreSdkAT5 < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/a9a2b64c-6488-46e7-a2dd-60910ea7819e/a0c754acda184512c3b192b7e7c94d73/dotnet-sdk-5.0.100-rc.1.20452.10-osx-x64.tar.gz"
  version "5.0.100-rc1"
  sha256 "9c02fa621029795af8dd05a8f6dc5c16f9707390472a4e3cddbd203a2be84046"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
