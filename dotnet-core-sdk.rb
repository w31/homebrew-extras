class DotnetCoreSdk < Formula
  desc ".NET Core SDK"
  homepage "http://www.microsoft.com/net/core"
  url "https://download.microsoft.com/download/F/A/A/FAAE9280-F410-458E-8819-279C5A68EDCF/dotnet-sdk-2.0.0-preview2-006497-osx-x64.tar.gz"
  version "2.0.0-preview2"
  sha256 "97dfd57b1e3f3c6ae365654141d3670619699449cca76c3d7ef13a9f0b967ad5"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end

