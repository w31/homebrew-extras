class DotnetSdk < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/"
  url "https://download.visualstudio.microsoft.com/download/pr/f4c0e2ca-6329-4138-a966-69db07876d93/f30fa96952d41bf4e661c0e404a288db/dotnet-sdk-5.0.301-osx-x64.tar.gz"
  version "5.0.301"
  sha256 "c4d1b630e6ff66127bde789edbdef68d83db1b2d647c10a7d25914819606e81f"

  def install
    (share/"dotnet").install Dir["*"]
    bin.install_symlink share/"dotnet/dotnet"
  end

  test do
    system bin/"dotnet", "version"
  end
end
