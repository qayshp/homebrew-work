class Layer0 < Formula
  desc "Build, Manage, and Deploy Your Application"
  homepage "http://layer0.ims.io/"
  url "https://github.com/quintilesims/layer0/releases/download/v0.10.9/macOS.zip"
  version "0.10.9"
  sha256 "188434bdca7d320b4341836225850c78ec27c0ac9959ba694a4ad2e8a033662a"

  depends_on "terraform"

  def install
    bin.install "l0", "l0-setup", "terraform-provider-layer0"
  end

  test do
    system "#{bin}/l0", "help"
    system "#{bin}/l0-setup", "help"
    system "file #{bin}/terraform-provider-l0"
  end
end
