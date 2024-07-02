class DotnetSdk < Formula
  desc ".NET SDK 8.0"
  homepage "https://dotnet.microsoft.com/"
  version "8.0.302"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/9d5ec61f-58b3-412f-a4b7-be8c295b4877/fcd77a3d07f2c2054b86154634402527/dotnet-sdk-8.0.302-osx-arm64.tar.gz"
      sha256 "0a786792c6ff41a7cf3c5d43bc2bbffe4a96a9c9df709cb816111ff670d33eb9"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/8893b99f-aca2-4f93-af7b-cf6017cf5f7b/e45804f1d91b9b01ebd5b15a29e9c088/dotnet-sdk-8.0.302-osx-x64.tar.gz"
      sha256 "183d575fe4604cac142145204f202857ceaf6dcda5a21e7d04df2b719d44d761"
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
