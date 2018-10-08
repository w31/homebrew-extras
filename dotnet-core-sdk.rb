class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.visualstudio.microsoft.com/download/pr/fcdaa140-a2a3-46cf-bab1-e211e7d070c8/9498335457a65063ec789e5532020cf7/dotnet-sdk-2.1.403-osx-x64.tar.gz"
  version "2.1.403"
  sha256 "c8de5c5a52370af82351f79ab3b273a930729afad5db01c3fe865786a2b94ae1"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
