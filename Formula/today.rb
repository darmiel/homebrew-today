# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Today < Formula
  desc "RALF companion for the CLI"
  homepage "https://github.com/darmiel/today"
  version "1.2.1"

  depends_on "git"
  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/darmiel/today/releases/download/v1.2.1/today_Darwin_x86_64.tar.gz"
      sha256 "8ba8d873a46325ccd3d2085f1239e38fd6bcd218b64e0546a8d8361d95588663"

      def install
        ENV["GOPATH"] = buildpath
        path = buildpath/"src/github.com/darmiel/today"
        path.install Dir["*"]
        cd path do
          system "go", "build", "-o", "#{bin}/today"
        end
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/darmiel/today/releases/download/v1.2.1/today_Darwin_arm64.tar.gz"
      sha256 "d1ce44a855d387075a2fd40de7c3478efd8c9479a3fdde56fd9d5da728a3fe0e"

      def install
        ENV["GOPATH"] = buildpath
        path = buildpath/"src/github.com/darmiel/today"
        path.install Dir["*"]
        cd path do
          system "go", "build", "-o", "#{bin}/today"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/darmiel/today/releases/download/v1.2.1/today_Linux_arm64.tar.gz"
      sha256 "21f5b3be8c010b602f3914bd4e12151e599b9f2c7f7553aa67bc450a341c3169"

      def install
        ENV["GOPATH"] = buildpath
        path = buildpath/"src/github.com/darmiel/today"
        path.install Dir["*"]
        cd path do
          system "go", "build", "-o", "#{bin}/today"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/darmiel/today/releases/download/v1.2.1/today_Linux_x86_64.tar.gz"
      sha256 "b7fbb87dd770b12b514f31b2e76e696fd7af1f713e24149cd597bf23c7b5f591"

      def install
        ENV["GOPATH"] = buildpath
        path = buildpath/"src/github.com/darmiel/today"
        path.install Dir["*"]
        cd path do
          system "go", "build", "-o", "#{bin}/today"
        end
      end
    end
  end

  head "https://github.com/darmiel/today.git"

  test do
    system "true"
  end
end
