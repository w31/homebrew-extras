class DotnetSdkAT5 < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/90588609-df30-4cb7-b4aa-a2e71ec42c9a/9bc894713f459ebe73493552fd231807/dotnet-sdk-5.0.404-osx-x64.tar.gz"
  version "5.0.404"
  sha256 "56c2b1515ec22cd7ed41f868859cba0043af0f82506f90f9e9ad226ed6b15d4e"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
