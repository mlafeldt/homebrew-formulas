class Cktool < Formula
  desc     "The ConvertKit Tool"
  homepage "https://github.com/mlafeldt/ck"
  version  "0.2.0"
  url      "https://github.com/mlafeldt/ck/releases/download/v#{version}/ck_darwin_amd64"
  sha256   "6f7d1e8ebed74cb3354cd48ad8eec33367ec2f8662976bef4c1c9b0287550e50"

  bottle :unneeded

  def install
    bin.install "ck_darwin_amd64" => "ck"
  end

  test do
    system "#{bin}/ck --version"
  end
end
