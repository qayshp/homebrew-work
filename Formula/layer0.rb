class Layer0 < Formula
  desc "Build, Manage, and Deploy Your Application"
  homepage "http://layer0.ims.io/"
  url "https://github.com/quintilesims/layer0/releases/download/v0.11.1/macOS.zip"
  version "0.11.1"
  sha256 "3110dbc6e2eb16b28946d726979aa1f8e40026e056874d7745eb4fca925dc30e"

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
