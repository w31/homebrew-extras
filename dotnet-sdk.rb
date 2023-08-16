class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.400"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/3df92af2-c066-403b-ae65-10b7ec879b32/a4a5a807d92510d5b74ee8fef9b2babd/dotnet-sdk-7.0.400-osx-arm64.tar.gz"
      sha256 "04ed7db1fe7da99eb88c8e6496714991ee63effc4eaaa7c4aad33b9a36fdc77c"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/1a603c4a-7e79-44ef-8e09-426a2c1c6e60/eb3dea0e50d73fbf28edf88aa8378e38/dotnet-sdk-7.0.400-osx-x64.tar.gz"
      sha256 "6d67846aaaef7f1e49bb80f4e737828ad16527397bd78fdd9cfc978afbb31052"
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
