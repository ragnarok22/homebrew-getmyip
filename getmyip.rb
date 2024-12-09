# Documentation: https://docs.brew.sh/Formula-Cookbook
class Getmyip < Formula
  desc "Get my current public IP and copied to the clipboard"
  homepage ""
  url "https://github.com/ragnarok22/getmyip/releases/download/v1.0.0/getmyip"
  sha256 "ed3403ccfd3d18c52d6aa1d66809b6d474fe475024f3b7bf40573ad71ec268cf"
  license ""

  def install
    bin.install "getmyip"
  end

  test do
    output = shell_output("#{bin}/getmyip").strip
    assert_match(/\b\d{1,3}(\.\d{1,3}){3}\b/, output, "Output does not match an IP format")
  end
end
