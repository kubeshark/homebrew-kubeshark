# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/41.0/kubeshark_41.0_darwin_arm64.tar.gz"
      sha256 "2cfdfdda42277cd6609640f0b565b80d683815875515d5d8ec36321cf73c5a94"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/41.0/kubeshark_41.0_darwin_amd64.tar.gz"
      sha256 "6ab485a41490fdd87f615ce98c0b12ed47a1d6c8dc5afdd55f4e8d04794ce173"

      def install
        bin.install "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/41.0/kubeshark_41.0_linux_arm64.tar.gz"
      sha256 "f6d9546108dd0caeed0c6c1abb9dbb64ea1e53da91ffab10513047b3defbdd44"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/41.0/kubeshark_41.0_linux_amd64.tar.gz"
      sha256 "6934432d143cd4dcd65390b2b8bfdb80376da8441de203828cb0673da417685d"

      def install
        bin.install "kubeshark"
      end
    end
  end
end
