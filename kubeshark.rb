# typed: false
# frozen_string_literal: true

class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "52.1.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/v52.1.63/kubeshark_darwin_arm64"
      sha256 "f04d149eef622d94f8121f03c1fca46f7bba8592e27a4b6d92b3655007b63aa3"

      def install
        bin.install "kubeshark_darwin_arm64" => "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v52.1.63/kubeshark_darwin_amd64"
      sha256 "4eff3d127f5d34591d65ad5bda798a9037a119683605272dbce479ba4ccbeea7"

      def install
        bin.install "kubeshark_darwin_amd64" => "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v52.1.63/kubeshark_linux_amd64"
      sha256 "a55719f49338a71ef04abcb042108a959d9809bfe0ed7807c604161c86b4be67"

      def install
        bin.install "kubeshark_linux_amd64" => "kubeshark"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/v52.1.63/kubeshark_linux_arm64"
      sha256 "f94596f3050c8162487092ddfd5a67d9cb69ca46b381219868752d10e715eee5"

      def install
        bin.install "kubeshark_linux_arm64" => "kubeshark"
      end
    end
  end
end
