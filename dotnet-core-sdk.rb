class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/b9251194-4118-41cb-ae05-6763fb002e5d/1d398b4e97069fa4968628080b617587/dotnet-sdk-3.0.100-osx-x64.tar.gz"
  version "3.0.100"
  sha256 "f0f8af049e0ecbeea9c9c37c16679d6fc2cd4c165510b00e3fad3cd8d0fe0160"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
    bin.install_symlink libexec/"host"
    bin.install_symlink libexec/"sdk"
    bin.install_symlink libexec/"shared"
  end

  test do
    system bin/"dotnet", "version"
  end
end
