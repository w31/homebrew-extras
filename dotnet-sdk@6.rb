class DotnetSdkAT6 < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/43189462-e807-4a01-88fe-d348d72130ad/29abc60cb75e8bcb12df60c2930fec25/dotnet-sdk-6.0.404-osx-x64.tar.gz"
  version "6.0.404"
  sha256 "96355393ca0b29972abe33364e28f958e6ee4d5fd2eb81b09e1ca63123089721"

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
