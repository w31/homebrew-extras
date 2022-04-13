class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/1a014dee-ff5f-48e3-a817-82b9bd536b56/fed3a710f5e0add13844a6ce400775a1/dotnet-sdk-6.0.202-osx-x64.tar.gz"
  version "6.0.202"
  sha256 "b1c32bd9c68b2cc57daa960b0d42ca4c954ad731ba9948767c130e676580e38a"

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
