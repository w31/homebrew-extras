class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.202"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/4402413a-ef81-4732-a0c0-38f11694b226/e205b8bf48d95902a6dbe1c3cccca272/dotnet-sdk-7.0.202-osx-arm64.tar.gz"
      sha256 "7f8201d42d31d6985288d0e31a32aa3b1dff40fceb8cb202993c0b72883bcebb"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/d3fe9043-0ff4-4584-aacf-1ad41c47407b/7b84ed341359488cd0de21de1b4df6d0/dotnet-sdk-7.0.202-osx-x64.tar.gz"
      sha256 "1531bfa7bf384f8b5c433d87af170f7839b130ea9c20b617aaf41742a13eefa9"
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
