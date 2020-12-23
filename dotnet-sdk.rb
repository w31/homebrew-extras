class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/1193fc39-e498-407d-bf65-071172fbfb8f/56c95047d1d187cec6dd107674b650a8/dotnet-sdk-5.0.101-osx-x64.tar.gz"
  version "5.0.101"
  sha256 "b8a2628d31ff7d68823b63ea352189d1e91a358ecd62739cb8c2bddf2e02763f"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
