class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/1c966a74-8ec0-4d07-997f-a96ca2dd9dd5/bad90bb7bd183a40ecae341198ea0fe9/dotnet-sdk-3.1.102-osx-x64.tar.gz"
  version "3.1.102"
  sha256 "fe535a97e96a4da13c92ac0b31ea2f09c2e8e84744103b9cb7e66c49f857fc17"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
