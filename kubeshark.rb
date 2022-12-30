# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "38.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/38.0/kubeshark_38.0_darwin_amd64.tar.gz"
      sha256 "9216c118a247539ef59cb2ba9eb8fc293f267d7b8e9b7fcfe3b4b21ccfc5724b"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/38.0/kubeshark_38.0_darwin_arm64.tar.gz"
      sha256 "2d189d840482497411cc701649c76b242d13bfe64904daa27b9ffbc3da5eb037"

      def install
        bin.install "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/38.0/kubeshark_38.0_linux_arm64.tar.gz"
      sha256 "a67e36520a81434b1d859df8a066578fe1e15ec50f2f3dc6497703874ff53334"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/38.0/kubeshark_38.0_linux_amd64.tar.gz"
      sha256 "41a2706a678f90aa896fb25f0835ba07a1813b3cee941bd032c9078fcc26bbea"

      def install
        bin.install "kubeshark"
      end
    end
  end
end
