class DotnetSdk < Formula
  desc ".NET SDK 9.0"
  homepage "https://dotnet.microsoft.com/"
  version "9.0.101"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/6707b71c-f95b-46b9-a4f8-067922291242/93d5be41bfa39461c47bae856a8ad93c/dotnet-sdk-9.0.101-osx-arm64.tar.gz"
      sha256 "02af7e1225f5f68c47a879fc1180d6382b85d7b2bf6463b10190a5dae941ed6c"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/330381bd-72dc-47ba-b5fb-884bd8b0bb44/8f1eef9415fc29a806fbf80a54e28c0e/dotnet-sdk-9.0.101-osx-x64.tar.gz"
      sha256 "84fc014dceaeaba9754f5b4edceb0e1af51d746b4f2d8f0e15df94164694fa77"
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
