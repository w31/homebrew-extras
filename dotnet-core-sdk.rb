class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/7315b6a5-b535-4349-892a-7ec82b573724/f44f5f852f0ef4364cff9d00035a3987/dotnet-sdk-2.2.103-osx-x64.tar.gz"
  version "2.2.103"
  sha256 "381273259015cce56f6c75d034bfb5ff06ad1b5c230e1cff4d8acb2267424cdc"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
