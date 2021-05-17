class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/56da864b-1efd-46a6-b761-b285283696cb/1ad897dff863fdd3cdbaf8a447b09317/dotnet-sdk-5.0.203-osx-x64.tar.gz"
  version "5.0.203"
  sha256 "0c2f8203c855c61a390ae1f6430bf334198ace4d11e656e7c261ac03a9fb209a"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
