class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.4/nylzo_0.13.4_darwin_arm64.tar.gz"
      sha256 "8188e78012ea20142c1804e400466e63548cfa8a23a94897aa508d1efea87be8"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.4/nylzo_0.13.4_darwin_amd64.tar.gz"
      sha256 "73ddbfdc064e545fd86114de12b002e97585bafc96bee1a868284269e8e8ed44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.4/nylzo_0.13.4_linux_arm64.tar.gz"
      sha256 "cb67f1d96a56fd4ef0eda2bfb3d0efc65c98039ef9c69c7cd30df5d1e97a3f9f"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.4/nylzo_0.13.4_linux_amd64.tar.gz"
      sha256 "f7bb2696a38889abd064d2a0cd7b0a2be49df9d2fcac0d7fe2efeb6de31d511b"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
