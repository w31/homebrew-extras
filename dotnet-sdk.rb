class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.202"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/fc7ed56d-3afe-4aa6-81bb-b4b0f5df56b5/d199f43f7421c6677ba25544b442b6b7/dotnet-sdk-7.0.302-osx-arm64.tar.gz"
      sha256 "460f835ef19c7655384e88f7eb457b2aeb92b8723a692f0ab00232f5b66315f8"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/34ce4803-1444-48a2-9955-e2a9b9061b03/e18c978b55226240ca037cf8b1770064/dotnet-sdk-7.0.302-osx-x64.tar.gz"
      sha256 "a49ce1d08083f062b500651fd765905dbcdd8635eb0c9b57a671e79f18136ca0"
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
