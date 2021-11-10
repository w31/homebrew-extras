class DotnetSdk < Formula
  desc ".NET SDK 6.0"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/62f78047-71de-460e-85ca-254f1fa848de/ecabeefdca2902f3f06819612cd9d45c/dotnet-sdk-6.0.100-osx-x64.tar.gz"
  version "6.0.100"
  sha256 "6938e387b3e0c059683ef6ffb4c3ef726189ea88134462666cd6e346ad41294a"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
