class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/5e5de074-71f0-4df3-bce8-39885a553d05/1dc6b87dc3481c958d7fe403dde5dc03/dotnet-sdk-3.0.101-osx-x64.tar.gz"
  version "3.0.101"
  sha256 "2d6525e8b7c92b5c25c0d990a2f5c628a55197e2661545e3e9f0a58dc3d9a4f6"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
    bin.install_symlink libexec/"host"
    bin.install_symlink libexec/"sdk"
    bin.install_symlink libexec/"shared"
  end

  test do
    system bin/"dotnet", "version"
  end
end
