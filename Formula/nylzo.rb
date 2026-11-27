class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.14.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.4/nylzo_0.14.4_darwin_arm64.tar.gz"
      sha256 "315e6c48eafed2c068b97ec42aadf962d0851a1f8653325b906c1a337de13d25"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.4/nylzo_0.14.4_darwin_amd64.tar.gz"
      sha256 "fa1e1a84deed0154404027c0c7ed581dd99eab48782395eff7cc43d8f764ecf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.4/nylzo_0.14.4_linux_arm64.tar.gz"
      sha256 "1f10ad707a45b5254de93904584b3aba3d5639fcdf387c08202f3d946494377a"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.4/nylzo_0.14.4_linux_amd64.tar.gz"
      sha256 "dd4b658617b0a3146b13f54f63201613bccdbafca6821f8ebfb8a39d08ff4992"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
