class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.304"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/c7a10ece-45cd-483f-be8d-15a10b2d0c51/1ded758a3b6140c435e283b0d0ace182/dotnet-sdk-7.0.304-osx-arm64.tar.gz"
      sha256 "19ff0d8a5d1465abaaaf14ec801f95679b037459dfc4ce62f204940fc99a158f"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/18e7fd79-48de-4ad9-a7a5-a659a485e3d7/fc0d190f90917587626fc8086ad6d2f2/dotnet-sdk-7.0.304-osx-x64.tar.gz"
      sha256 "3397f2cf0e5fd43898210fa76f526cfa28c1e3e41e458ff39d4b3df7ed2c3882"
    end
  end

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
