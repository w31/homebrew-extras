class DotnetSdk < Formula
  desc ".NET SDK 8.0"
  homepage "https://dotnet.microsoft.com/"
  version "8.0.100"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/2a79b5ad-82a7-4615-a73b-91bf24028471/0e6a5c6d7f8b792a421e3796a93ef0a1/dotnet-sdk-8.0.100-osx-arm64.tar.gz"
      sha256 "e6ba41f9340fe71875bb569df92fa8e400f0cf71abf3cf19e5f1f8bd5e3e7bf5"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/e59acfc2-5987-43f9-bd03-0cbe446679e1/7db7313c1c99104279a69ccd47d160a1/dotnet-sdk-8.0.100-osx-x64.tar.gz"
      sha256 "cfbde9f7ef322332bcd0749fc5da843c09cf78e1cc4d10d3358d3ae4dc655c24"
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
