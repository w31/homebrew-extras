class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/901c2283-505d-408b-a7b0-01b5ee477783/ae5185f3fde13c7a62651608387a2a71/dotnet-sdk-2.1.500-osx-x64.tar.gz"
  version "2.1.500"
  sha256 "badd643a98b96f9755b29f7137b9a737ae62db346154bf164a086c2fb4fa1e78"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
