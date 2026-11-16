class Nylzo < Formula
  desc "Send secrets and files through encrypted links that expire"
  homepage "https://nylzo.com"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.3/nylzo_0.13.3_darwin_arm64.tar.gz"
      sha256 "49c1acfe87201f14a8b253ca763c4854940be15c74138074cbbd0a524d1d064a"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.3/nylzo_0.13.3_darwin_amd64.tar.gz"
      sha256 "019ebdd7646fdd4451ff095f064686c517cee756ba44eca89bdc617b647b1c96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.3/nylzo_0.13.3_linux_arm64.tar.gz"
      sha256 "6cc5d5cbf0054312c2ece5caa95b4bd9a20907a03f6cbd2c7294c96907ddbe43"
    end
    on_intel do
      url "https://github.com/misaon/nylzo/releases/download/v0.13.3/nylzo_0.13.3_linux_amd64.tar.gz"
      sha256 "5238b9d1f59833a05e981aca000fced072ffba63681d216f09a6c56eb7e79444"
    end
  end

  def install
    bin.install "nylzo"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nylzo version").strip
  end
end
