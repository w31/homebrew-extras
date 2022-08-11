class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/f52fb2f4-a0a3-4094-9f75-add72fcbc21e/d46eda7abf39baf278c0b0b040c7b81d/dotnet-sdk-6.0.400-osx-x64.tar.gz"
  version "6.0.400"
  sha256 "35ba54eb13634a68116d73ee81df32bf17326c88a5fc770ea96ecef867ee4e9d"

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
