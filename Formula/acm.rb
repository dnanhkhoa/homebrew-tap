class Acm < Formula
  desc 'A dead-simple AI-powered CLI tool for effortlessly crafting meaningful Git commit messages'
  homepage 'https://github.com/dnanhkhoa/acm'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/dnanhkhoa/acm/releases/download/v0.3.0/acm-v0.3.0-aarch64-apple-darwin.tar.gz'
      sha256 '2798fc6212847b77817f05c9cf47dbbebc692278b68643d4f5385d88a0d26526'
    else
      url 'https://github.com/dnanhkhoa/acm/releases/download/v0.3.0/acm-v0.3.0-x86_64-apple-darwin.tar.gz'
      sha256 'fbdb89d846af7e46912c169c9f2d27830a7d0d67929a9501e9c3cc9fa5926d70'
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/dnanhkhoa/acm/releases/download/v0.3.0/acm-v0.3.0-aarch64-unknown-linux-gnu.tar.gz'
      sha256 '842add930836a8638c16ab801f2310544610d31e8c4a4c77354df06cdcc85096'
    else
      url 'https://github.com/dnanhkhoa/acm/releases/download/v0.3.0/acm-v0.3.0-x86_64-unknown-linux-gnu.tar.gz'
      sha256 'b7bb50204e3048d6711ce63242813baeeb32cf58aa2b408b0f210185392f2f96'
    end
  end

  def install
    bin.install 'acm'
  end

  test do
    system "#{bin}/acm", '--version'
  end
end
