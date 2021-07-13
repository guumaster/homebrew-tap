# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hostctl < Formula
  desc "Your dev tool to manage /etc/hosts like a pro"
  homepage "https://github.com/guumaster/hostctl"
  version "1.1.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.0/hostctl_1.1.0_macOS_64-bit.tar.gz"
      sha256 "602e8610d3d8de4adb58cc9294683b87e2a795cae635f6135a5291a9fca6c157"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.0/hostctl_1.1.0_linux_64-bit.tar.gz"
      sha256 "68b3ad82317291a8bb1ed36eb43595c32dde4228bd19312d5dcd9f712103bf66"
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
