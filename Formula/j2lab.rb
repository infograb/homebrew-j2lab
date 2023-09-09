class Jira2gitlab < Formula
    desc "A binary for jira to gitlab migration"
    homepage "https://gitlab.com/infograb-public/J2Lab"
    version "v0.0.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://gitlab.com/infograb-public/J2Lab/-/releases/v0.0.1/downloads/J2Lab_0.0.1_darwin_arm64.tar.gz"
        sha256 "019f7250df6a2aeb38708c0b1746fe5796d7e7a3942a9f83a82a44f512c561cb"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
        url "https://gitlab.com/infograb-public/J2Lab/-/releases/v0.0.1/downloads/J2Lab_0.0.1_linux_amd64.tar.gz"
        sha256 "dd347ed027d77dcb12688ed941d275af784c47ca28d700a39cde3aa1a626f72a"
      elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
        url "https://gitlab.com/infograb-public/J2Lab/-/releases/v0.0.1/downloads/J2Lab_0.0.1_linux_386.tar.gz"
        sha256 "e71abd7d5f90cb02503258a44da4699659b7c8ee0cf59bd2d335e38f2b63faf8"
      end
    end
  
    def install
      bin.install "j2lab"
    end
  end
  