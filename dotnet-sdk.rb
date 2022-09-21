class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/e79e447d-20fd-4ed9-992d-39165aaf964a/1f101c161bc4a931e16c697e3934e413/dotnet-sdk-6.0.401-osx-x64.tar.gz"
  version "6.0.401"
  sha256 "d7f9b81633485ffd5cd0b822d46cd142fb10dcdcda613501f4531cd8be49ca8e"

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
