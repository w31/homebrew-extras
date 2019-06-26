class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/328d95ad-eb94-4d1f-a4a9-2a35dbfea719/4913918a65ae135af1c8823f04061708/dotnet-sdk-2.2.300-osx-x64.tar.gz"
  version "2.2.300"
  sha256 "af0c87e16c66c0ec1169c62398eeb7d9e89e6767484382be6d4ab729880e741e"

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
