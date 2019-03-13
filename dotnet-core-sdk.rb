class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/47709d55-450a-4828-9e3a-de65aef7c2f2/f512dd0abf6989ce1800d4fd40a745d7/dotnet-sdk-2.2.105-osx-x64.tar.gz"
  version "2.2.105"
  sha256 "77da9e54f3f443d3dd338758270c53e323b4a10abb4b4bb4e5de1f27b90ecfef"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
