class Cktool < Formula
  desc     "The ConvertKit Tool"
  homepage "https://github.com/mlafeldt/ck"
  version  "0.3.0"
  url      "https://github.com/mlafeldt/ck/releases/download/v#{version}/ck_darwin_amd64"
  sha256   "0acd5dd6075f1d364f1bf136677efabe568e409182d0a47d176f5d50165fc42a"

  bottle :unneeded

  def install
    bin.install "ck_darwin_amd64" => "ck"
  end

  test do
    system "#{bin}/ck version"
  end
end
