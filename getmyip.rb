class Getmyip < Formula
  desc "Get my current public IP and copied to the clipboard"
  homepage "https://github.com/ragnarok22/getmyip"
  url "https://github.com/ragnarok22/getmyip/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "96887ca45d431232c7b3562e53dd3a3566da6fd8e87f761f2ce324549195845d"
  license "MIT"

  def install
    bin.install "getmyip"
    chmod 0755, bin/"getmyip"
  end

  test do
    output = shell_output(bin/"getmyip").strip
    assert_match(/\b\d{1,3}(\.\d{1,3}){3}\b/, output, "Output does not match an IP format")
  end
end
