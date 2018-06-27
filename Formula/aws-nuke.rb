class AwsNuke < Formula
  desc     "Nuke a whole AWS account"
  homepage "https://github.com/rebuy-de/aws-nuke"
  version  "2.1.0"
  url      "https://github.com/rebuy-de/aws-nuke/releases/download/v2.1.0/aws-nuke-v#{version}-darwin-amd64"
  sha256   "6d28cbc7d5c0122c5f2c18e83b9362caaff7c298eb6f134803759d806a4da8f9"

  bottle :unneeded

  def install
    bin.install "aws-nuke-v#{version}-darwin-amd64" => "aws-nuke"
  end

  test do
    system "#{bin}/aws-nuke version"
  end
end
