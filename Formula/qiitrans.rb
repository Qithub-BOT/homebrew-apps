# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qiitrans < Formula
  desc "Yet another task management tool."
  homepage "https://github.com/Qithub-BOT/QiiTrans/"
  version "1.0.0"

  on_macos do
    url "https://github.com/Qithub-BOT/QiiTrans/releases/download/v1.0.0/QiiTrans_1.0.0_macOS_all.zip", :using => CurlDownloadStrategy
    sha256 "785c804268dfe3777d9d70da5459b61ff90d980b8a7c40af1e6a852e662bd6c1"

    def install
      bin.install "qiitrans"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Qithub-BOT/QiiTrans/releases/download/v1.0.0/QiiTrans_1.0.0_Linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "70617ba02e5d7265ecd70f6261bc317b9307a4c800ecf1ec863b1ae6816b7188"

      def install
        bin.install "qiitrans"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Qithub-BOT/QiiTrans/releases/download/v1.0.0/QiiTrans_1.0.0_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1737b51e77ee7aa56f332e86c6c1c742d1c54c0572b9268e5812e12f81b24b4b"

      def install
        bin.install "qiitrans"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Qithub-BOT/QiiTrans/releases/download/v1.0.0/QiiTrans_1.0.0_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "93b4821813d23079d223512252d28cd606ef0823e569ba17d2fae7560b1dcac3"

      def install
        bin.install "qiitrans"
      end
    end
  end

  test do
    system "#{bin}/qiitrans --version"
  end
end
