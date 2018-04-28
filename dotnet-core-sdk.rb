class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/2/E/C/2EC018A0-A0FC-40A2-849D-AA692F68349E/dotnet-sdk-2.1.105-osx-x64.tar.gz"
  version "2.1.105"
  sha256 "65da537290f99bf21d1eed7c1c16481340262fee8ab86eb9f7072a9a66688e61"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
