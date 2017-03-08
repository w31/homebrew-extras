class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/F/D/5/FD52A2F7-65B6-4912-AEDD-4015DF6D8D22/dotnet-1.1.1-sdk-osx-x64.tar.gz"
  version "1.1.1"
  sha256 "f030188673ebb71fc3bb3a089504c2079cd8176e669575b5992664b405194366"

  depends_on "openssl"

  def install
    libexec.install Dir["*"]
    (libexec + "shared/Microsoft.NETCore.App/1.1.1/libcrypto.1.0.0.dylib").make_symlink Formula["openssl"].lib/"libcrypto.1.0.0.dylib"
    (libexec + "shared/Microsoft.NETCore.App/1.1.1/libssl.1.0.0.dylib").make_symlink Formula["openssl"].lib/"libssl.1.0.0.dylib"
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end

