class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/17115de2-6099-4c24-9a66-d89d25f52968/9f55035d1a43a5d133c6a0bd35230d69/dotnet-sdk-6.0.102-osx-x64.tar.gz"
  version "6.0.102"
  sha256 "caec2b4d4f28b36fde1185c76a6783070360ca0526da90148c076dc4947d9ae6"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
