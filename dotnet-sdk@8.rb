class DotnetSdkAt8 < Formula
  desc ".NET SDK 8.0"
  homepage "https://dotnet.microsoft.com/"
  version "8.0.402"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/02e8cab1-b111-46c5-be2c-7cf4faa3eb0f/bdb1b083203768de0a59d4f1c4d8abbb/dotnet-sdk-8.0.402-osx-arm64.tar.gz"
      sha256 "ddeff38e1c5e0985b5a2ee79ad1e7477861cfcc01c407704fb11cfbda180a968"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/351ba3c9-191f-4382-bd69-046622fbb656/283df9aa63ec1392843da7a0f473cc9c/dotnet-sdk-8.0.402-osx-x64.tar.gz"
      sha256 "e161131bd1870e7855fdb286b1b20f8d25005042e0d24b8014b14ed9087b3aa6"
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
