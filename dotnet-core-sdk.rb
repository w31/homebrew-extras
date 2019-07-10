class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/838546de-7f3d-4fc9-98ef-fff8c8e45e17/c09e44c880ec45c0a202f59a943a13eb/dotnet-sdk-2.2.301-osx-x64.tar.gz"
  version "2.2.301"
  sha256 "d5c1a55811f3f6b892cc161de0dfda101bd51609e38a8dab8ee4d6659e19d433"

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
