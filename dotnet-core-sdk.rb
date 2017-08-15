class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/1/B/4/1B4DE605-8378-47A5-B01B-2C79D6C55519/dotnet-sdk-2.0.0-osx-x64.tar.gz"
  version "2.0.0"
  sha256 "6e87270e72b5a02ea4e3c4b2266d079366e0e55d6892f9dad5f64dee3f8a341b"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
