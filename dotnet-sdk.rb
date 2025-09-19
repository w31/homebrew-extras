class DotnetSdk < Formula
  desc ".NET SDK 9.0"
  homepage "https://dotnet.microsoft.com/"
  version "9.0.305"

  on_macos do
    on_arm do
      url "https://builds.dotnet.microsoft.com/dotnet/Sdk/9.0.305/dotnet-sdk-9.0.305-osx-arm64.tar.gz"
      sha256 "a39973c92ccbc3001e5b4f5085a67854955a0908fc415841b28b0799d038d101"
    end
    on_intel do
      url "https://builds.dotnet.microsoft.com/dotnet/Sdk/9.0.305/dotnet-sdk-9.0.305-osx-x64.tar.gz"
      sha256 "035103ed38b487f451b915ae3ec7f04824e8478741569ee2ed1dc066abd27d34"
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
