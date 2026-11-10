class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.12.1/nylzo_0.12.1_darwin_arm64.tar.gz"
      sha256 "28acfe70a17cd566ec3bd2fe72f0ecaf248241bd89debc54bbc5861acc32bd77"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.12.1/nylzo_0.12.1_darwin_amd64.tar.gz"
      sha256 "2bfbcccfe0cf6c6364e22bd9440f0b5aeaf5206de83987313bb8b2509165d37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.12.1/nylzo_0.12.1_linux_arm64.tar.gz"
      sha256 "c74fb7504e10f05eea8628cfec9ee737501ec6797d6971d69e9a520f4c2fe7cb"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.12.1/nylzo_0.12.1_linux_amd64.tar.gz"
      sha256 "a968ae39bcec80acfc0ac3072bca31ce2ada66806806a708a93768946f7c1701"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
