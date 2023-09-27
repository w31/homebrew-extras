class DotnetSdk < Formula
  desc ".NET SDK 7.0"
  homepage "https://dotnet.microsoft.com/"
  version "7.0.401"

  on_macos do
    on_arm do
      url "https://download.visualstudio.microsoft.com/download/pr/4246aa3e-4c90-4022-b3d2-5bf36547bfa6/8f75268f923723fb2c4a44b271dbc042/dotnet-sdk-7.0.401-osx-arm64.tar.gz
      sha256 "ec2c93c238b047ac937d27b3cf2fc6e8c28d4b8db626518934f2736204444b4c"
    end
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/7190497a-9e02-4369-ba8a-29e7a4acc69e/45af3f104e254cc37cf48227bc8e464c/dotnet-sdk-7.0.401-osx-x64.tar.gz"
      sha256 "256ddd97c98305f99a2d16603af6344362a2d0c5ab5c9b4c9e2ff837ab2adf5d"
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
