class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.14.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.3/nylzo_0.14.3_darwin_arm64.tar.gz"
      sha256 "8da3f990a816cdd4e3862963f90635baa0f352c2c594149d116f0ce9a72cde1f"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.3/nylzo_0.14.3_darwin_amd64.tar.gz"
      sha256 "c3c491cde1b1a29719fd867801a765dbb177c2a26fd6ab9bfedf43d3702e477f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.3/nylzo_0.14.3_linux_arm64.tar.gz"
      sha256 "34e7fbf4ff9bf7cb88ce47d0c3ddc796bd283dd506e6b78780b10de07c775b8e"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.3/nylzo_0.14.3_linux_amd64.tar.gz"
      sha256 "af2590d1a5502950ba278e51b0cc9ee16583a8cbda8b84b20d06c01dd2ee436f"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
