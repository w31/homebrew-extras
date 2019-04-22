class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/916803e3-24c4-4fa2-a1c7-e55e6f8c74ae/05dcc5fea8e1ddd530ea377bc19c071c/dotnet-sdk-2.2.203-osx-x64.tar.gz"
  version "2.2.203"
  sha256 "e5263822306be828a5923a39ec334ae6cf174a5bd4d1578a647d8cd81fbc9c72"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
