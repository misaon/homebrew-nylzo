class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.2/nylzo_0.14.2_darwin_arm64.tar.gz"
      sha256 "42625c97f720129ea1a162eadf43c47ad0f85ebe7e32dd7465456e07ea8adc0f"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.2/nylzo_0.14.2_darwin_amd64.tar.gz"
      sha256 "bf0e5f1138fd40294d4ffeb711623f5c924cff386b272149193bee2ac0c894e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.2/nylzo_0.14.2_linux_arm64.tar.gz"
      sha256 "c166d21a84fb29c5262b64bf7f7c3cf9e6bf1ae9216a8091ef61f1f9b3c9c498"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.2/nylzo_0.14.2_linux_amd64.tar.gz"
      sha256 "32c376b2b54b5a6e253e55a5d7f22676901febc095833a1098c8a4a422b64b6f"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
