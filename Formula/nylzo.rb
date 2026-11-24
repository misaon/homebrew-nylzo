class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.1/nylzo_0.14.1_darwin_arm64.tar.gz"
      sha256 "51150d502cc62e16bec29f880a382ff57fcc553198f14f133226fd89406e997e"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.1/nylzo_0.14.1_darwin_amd64.tar.gz"
      sha256 "3f2d274353284397ed0bc63776b883d550d2dc95b635d521c25b8c56581acfb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.1/nylzo_0.14.1_linux_arm64.tar.gz"
      sha256 "396cc06dcc86b84f7120e08522d75c2f8e55bd81dc4e2bc44b78433d5fa20c96"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.14.1/nylzo_0.14.1_linux_amd64.tar.gz"
      sha256 "75f1d45599eca3a2cf521c3985af351e3ead781e654faae3a841c25d98f3072b"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
