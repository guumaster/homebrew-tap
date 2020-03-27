# This file was generated by GoReleaser. DO NOT EDIT.
class Hostctl < Formula
  desc "manage your hosts file like a pro"
  homepage "https://github.com/guumaster/hostctl"
  version "0.5.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/guumaster/hostctl/releases/download/v0.5.4/hostctl_0.5.4_macOS_64-bit.tar.gz"
    sha256 "705777d1c5eea390505956a624977ddd0a884e5cc69c356654fef93bace9c53f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v0.5.4/hostctl_0.5.4_linux_64-bit.tar.gz"
      sha256 "8dc5bab31adfbbe04717fc534b3007333baf20c737440cfaadefd9e36b9cb685"
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
