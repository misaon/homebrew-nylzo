class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.2/nylzo_0.13.2_darwin_arm64.tar.gz"
      sha256 "635ed088406d924a8b102bbd71ac453d7e6ec0dbb670adba0e4f8b810a92e8cf"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.2/nylzo_0.13.2_darwin_amd64.tar.gz"
      sha256 "1749d58b18d6df0411dda9d514bc0a0ef263a18aad8668f18aaf5ba63c291b67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.2/nylzo_0.13.2_linux_arm64.tar.gz"
      sha256 "80e2f37dff9203fd7aad89f199bae323e238b29980e6f5e47515c2af923b5266"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.2/nylzo_0.13.2_linux_amd64.tar.gz"
      sha256 "16e09190ba96c980af824e26d04c4e7d13a6350d502e89faeee617d33b9d74ef"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
