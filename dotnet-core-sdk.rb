class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "http://download.microsoft.com/download/A/F/6/AF610E6A-1D2D-47D8-80B8-F178951A0C72/Binaries/dotnet-dev-osx-x64.1.0.0-preview2-1-003177.tar.gz"
  version "1.1"
  sha256 "8f1ffef37aa9da7273674185dab3b78feb44082d3a9d3156dfc20329acfe7e0d"

  depends_on "openssl"

  def install
    libexec.install Dir["*"]
    (libexec + "shared/Microsoft.NETCore.App/1.0.0/libcrypto.1.0.0.dylib").make_symlink Formula["openssl"].lib/"libcrypto.1.0.0.dylib"
    (libexec + "shared/Microsoft.NETCore.App/1.0.0/libssl.1.0.0.dylib").make_symlink Formula["openssl"].lib/"libssl.1.0.0.dylib"
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end

