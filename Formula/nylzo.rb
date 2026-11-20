class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.7/nylzo_0.13.7_darwin_arm64.tar.gz"
      sha256 "a171ad6f629ff40ac18222f11a9917c2e9f0b5b8ae734ae858752587bbeeecc7"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.7/nylzo_0.13.7_darwin_amd64.tar.gz"
      sha256 "70e18c22cf62075a5660fcc76b7559faeea7fa089b4d1289850ad4fffde916c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.7/nylzo_0.13.7_linux_arm64.tar.gz"
      sha256 "bf3c6ef7b0012f46768fe6f4121789c9089d1ba4a3018d1bdd19ce1af3e7763f"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.7/nylzo_0.13.7_linux_amd64.tar.gz"
      sha256 "3bf1c7ce9d858b460f9a58c7c5225ad362486baf3cd01b0a0d8898b13050cab3"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
