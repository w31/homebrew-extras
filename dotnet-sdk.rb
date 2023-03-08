class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.201"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/92a51981-d618-43e3-a93d-d6f0d178ecc3/020dcb1797b5a73e690bd6ad511619e1/dotnet-sdk-7.0.201-osx-arm64.tar.gz"
      sha256 "ec80feb09c357461418d6aedf0707aec1f2e4a9943eacca27141629c7d379585"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/71de3463-3644-4159-a7cc-e3b613eb7167/785a9b41cc226c368f44b5742bef466b/dotnet-sdk-7.0.201-osx-x64.tar.gz"
      sha256 "1be53171017137f1f234056971f5d0ba999cc3d3d0180022c56e5c7d62254072"
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
