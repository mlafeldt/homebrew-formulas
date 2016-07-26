class Ec2Filter < Formula
  desc     "Discover EC2 instances like a boss "
  homepage "https://github.com/Jimdo/ec2-filter"
  version  "0.0.3"
  url      "https://github.com/Jimdo/ec2-filter/releases/download/v#{version}/ec2-filter_darwin_amd64"
  sha256   "87ad5961cb1e31937a3624970f5799ca1e4932ea3a64606d6a86d00bdba7d4c8"

  bottle :unneeded

  def install
    bin.install "ec2-filter_darwin_amd64" => "ec2-filter"
  end

  test do
    system "#{bin}/ec2-filter --help"
  end
end
