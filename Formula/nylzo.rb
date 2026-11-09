class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.11.0/nylzo_0.11.0_darwin_arm64.tar.gz"
      sha256 "01be8553ec02c0d4372cfa63b2935b4052781e1c1ffd0217da7c1f8a593e03f1"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.11.0/nylzo_0.11.0_darwin_amd64.tar.gz"
      sha256 "93b147a3f2daf708a29774561b8bd33337595d70d64b00c87d6e93e1791ad0ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.11.0/nylzo_0.11.0_linux_arm64.tar.gz"
      sha256 "209777edc77f8f701385405bdb4aad03cabeeed53b6ab6f4441855eeac161abe"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.11.0/nylzo_0.11.0_linux_amd64.tar.gz"
      sha256 "beb3707c0447a1c381a4d29f0be1c78dd64e304f14cc9c649fa50fdf4a23e8fb"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
