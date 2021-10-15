class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/50ae4c83-5e38-4eba-b683-68313e7ed6f2/14a0ed0f807fc8ecf3f68cb3464016bc/dotnet-sdk-5.0.402-osx-x64.tar.gz"
  version "5.0.402"
  sha256 "a54af4600018182d7da293d21c360e33f19a1300ffb00304f327858fad2aa6d6"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
