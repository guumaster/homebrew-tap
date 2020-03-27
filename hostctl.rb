# This file was generated by GoReleaser. DO NOT EDIT.
class Hostctl < Formula
  desc "manage your hosts file like a pro"
  homepage "https://github.com/guumaster/hostctl"
  version "0.5.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/guumaster/hostctl/releases/download/v0.5.4/hostctl_0.5.4_macOS_64-bit.tar.gz"
    sha256 "ea8c0c5255b4452ad1ff92b3eb9ad301f836627745f2ecb738662e011d3b59d2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v0.5.4/hostctl_0.5.4_linux_64-bit.tar.gz"
      sha256 "c54003f2ce8b9c1d614164b91c64b6ab7def60a33f6465daedb6c2f1c1a5cc3b"
    end
  end

  def install
    bin.install "hostctl"
  end

  def caveats; <<~EOS
    Remember to add sudo to modify your hosts file.
  EOS
  end
end
