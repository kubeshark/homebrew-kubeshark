# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "39.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/39.0/kubeshark_39.0_darwin_arm64.tar.gz"
      sha256 "ce62211b83b2a8f836f67e226d92f3528df87ec0b8ba7e8b601da40c262c1bbf"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/39.0/kubeshark_39.0_darwin_amd64.tar.gz"
      sha256 "a80250c7944b6f87f7dabb193bc44e87934b468ae5803727b9b235fb4379a7b6"

      def install
        bin.install "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/39.0/kubeshark_39.0_linux_arm64.tar.gz"
      sha256 "d8096eec340a8c6b35dc85fc724a299db1b4a3918496d8a792b0ee035457c79d"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/39.0/kubeshark_39.0_linux_amd64.tar.gz"
      sha256 "2e0400a655dc965cf914d1ce98588c188aef2bc30777c7f47805fa65dfbdf035"

      def install
        bin.install "kubeshark"
      end
    end
  end
end
