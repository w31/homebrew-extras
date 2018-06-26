class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/D/0/4/D04C5489-278D-4C11-9BD3-6128472A7626/dotnet-sdk-2.1.301-osx-x64.tar.gz"
  version "2.1.301"
  sha256 "6d0526fe3afc23a6f467f34dbd63f096045fc8cdd00cbd9fdee98349dffb1d31"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
