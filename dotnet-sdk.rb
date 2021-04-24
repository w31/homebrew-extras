class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/a7d92db4-5f1f-4478-9caf-6e45c6ac8b09/2363d553132aaed687265c563431673b/dotnet-sdk-5.0.202-osx-x64.tar.gz"
  version "5.0.202"
  sha256 "6f270432de6c41d74f8ec19c999ae62189f253dacfd1d095131ddc10bf6d9d52"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
