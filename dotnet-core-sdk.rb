class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/1/5/2/1523EBE1-3764-4328-8961-D1BD8ECA9295/dotnet-dev-osx-x64.1.0.0-preview2-003121.tar.gz"
  version "003121"
  sha256 "1df92ad4eb117e717acbd68c46b06df4a677f590652099d0cc0982253bdf4534"

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

