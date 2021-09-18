class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/7fe7149d-feaa-44c6-8a7e-a9cfc42b461f/93fdf8bbf05fc293a05abad93c717897/dotnet-sdk-5.0.401-osx-x64.tar.gz"
  version "5.0.401"
  sha256 "3fd233080509e20c431b175c98c559eabf00ff2372bff11e45e81b8a942738f0"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
