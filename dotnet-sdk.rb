class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/ba14ff5a-bc51-4cd1-bc6d-af60be2dea43/bf9d3ce8313573a9f58ef34674f36257/dotnet-sdk-5.0.302-osx-x64.tar.gz"
  version "5.0.302"
  sha256 "a754a5be6734c0338ef53e14a4e99922bc9fb93bc94de813dd4bca06131be916"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
