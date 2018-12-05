class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/3100b00b-4e63-4d49-bd59-297931016032/b71d2aff0d650b5501258a54b0cd2ea7/dotnet-sdk-2.2.100-osx-x64.tar.gz"
  version "2.2.100"
  sha256 "17d9564fe3fb207096d99fcc8e5e2991434be68539dd8ba2b4566ba848751add"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
