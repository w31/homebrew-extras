class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/4d49659e-636e-4b16-8906-329dd47ba5f5/996a40a6eb3d2644770627a15d2a0492/dotnet-sdk-6.0.200-osx-x64.tar.gz"
  version "6.0.200"
  sha256 "bc912c10921f906e7de9cdfab0c741e85c59c98779dc5ee814092fbb87d3fc4c"

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
