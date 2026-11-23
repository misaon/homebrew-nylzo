class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.0/nylzo_0.14.0_darwin_arm64.tar.gz"
      sha256 "905549cfad37ca94d7723eea46bcd3add64c5379dfa5873e37ca30c0708fa23d"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.0/nylzo_0.14.0_darwin_amd64.tar.gz"
      sha256 "e9616b32b0f137babfa9a924a7ea694efe9b9ec4ac9db101b1a651deb73f151c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.0/nylzo_0.14.0_linux_arm64.tar.gz"
      sha256 "baf460c000f302cfe399870dc4bfb09fd2d3e3bd713d0591dbac1b9243bdaa0e"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.0/nylzo_0.14.0_linux_amd64.tar.gz"
      sha256 "ff23460dc27b78ac54d730f8b17777d403e4628651ec279b791d60125bfd103c"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
