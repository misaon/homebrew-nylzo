class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.0/nylzo_0.13.0_darwin_arm64.tar.gz"
      sha256 "49e3b31b49c82a9252a10280f6768563003c6e6e5e4c1bb0a3a5869f4c896428"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.0/nylzo_0.13.0_darwin_amd64.tar.gz"
      sha256 "96adc907ba0255b1c3094421a05df016abf8af265f66b8e80e769efcaec5fd2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.0/nylzo_0.13.0_linux_arm64.tar.gz"
      sha256 "84cdbe2bc6af223b4fb7447097d38ecce41dee70adf439fa30ad188050077f93"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.0/nylzo_0.13.0_linux_amd64.tar.gz"
      sha256 "32d692271b1c3bfd21a63c7b1d7044fd17ab9846a8fe6ba25223691019d1de6c"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
