class Cktool < Formula
  desc     "The ConvertKit Tool"
  homepage "https://github.com/mlafeldt/ck"
  version  "0.1.0"
  url      "https://github.com/mlafeldt/ck/releases/download/v#{version}/ck_darwin_amd64"
  sha256   "461ce11f5a7ead74fb518e7c37bf859429d55180f1610e5ba47cd23fa507fd09"

  bottle :unneeded

  def install
    bin.install "ck_darwin_amd64" => "ck"
  end

  test do
    system "#{bin}/ck --version"
  end
end
