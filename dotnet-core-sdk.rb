class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/e1f6e8dc-833f-46aa-866b-40b9bc68ed0f/6540a60960a6489061a08a9ccd3935cd/dotnet-sdk-3.1.401-osx-x64.tar.gz"
  version "3.1.401"
  sha256 "57c8ebccc581175a1716ce9ca42d040760a3f8c1255a1ee4b844ecf454717044"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
