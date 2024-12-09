# Documentation: https://docs.brew.sh/Formula-Cookbook
class Getmyip < Formula
  desc "Get my current public IP and copied to the clipboard"
  homepage ""
  url "https://github.com/ragnarok22/getmyip/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "96887ca45d431232c7b3562e53dd3a3566da6fd8e87f761f2ce324549195845d"
  license ""

  def install
    bin.install "getmyip"
  end

  test do
    system "false"
  end
end
