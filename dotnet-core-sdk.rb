class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://dotnetcli.blob.core.windows.net/dotnet/Sdk/2.1.302/dotnet-sdk-2.1.302-osx-x64.tar.gz"
  version "2.1.302"
  sha256 "42df970d532b75acd55a205d4c149b74c393df88f5a360048724c5ea0a0404e8"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
