class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/5c55a0f8-8f53-4b62-8fc5-9f428b8679a5/af7a2e2804c6cad414e6a686866baad7/dotnet-sdk-6.0.300-osx-x64.tar.gz"
  version "6.0.300"
  sha256 "25a818367ea4509eb897884548fc5d9b2388fc9f08ab52ea10d3e6eb1effd1ea"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  def post_install
    Dir.glob("#{share}/dotnet/**/*.dylib") do |file|
      system "/usr/bin/codesign", "-f", "-s", "-", file
    end
  end

  test do
    system bin/"dotnet", "version"
  end
end
