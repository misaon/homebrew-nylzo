class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.5/nylzo_0.13.5_darwin_arm64.tar.gz"
      sha256 "1f0fba03353746a82842f4ae223e3e1185ad3fe6310a7f5fa61d308296908474"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.5/nylzo_0.13.5_darwin_amd64.tar.gz"
      sha256 "a7b3345d80f104bc7796db53d1fa1816dd822cdfb6c658dea56fec1cfe948223"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.5/nylzo_0.13.5_linux_arm64.tar.gz"
      sha256 "5ebe58f22b860b2df21520d2313baf3f6857c0b960a19c60315c9169fdbd0d6f"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.5/nylzo_0.13.5_linux_amd64.tar.gz"
      sha256 "2f1a97e60cf2eb4d44aa870f405deb8f7cfb5c302a7371e0a872ae5a8ecc33f6"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
