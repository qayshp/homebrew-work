class Squash < Formula
  desc "The debugger for microservices"
  homepage "https://github.com/solo-io/squash"
  url "https://github.com/solo-io/squash/releases/download/v0.2.1/squash-osx"
  version "0.2.1"
  sha256 "45b5528c6617f8364468324142f8af583fd0a62e0dbea722215c968464e19d0b"

  def install
    bin.install "squash-osx"
  end

  test do
    system "#{bin}/squash-osx", "--help"
  end
end
