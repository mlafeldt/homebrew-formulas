require "formula"

class ChefRunner < Formula
  homepage "https://github.com/mlafeldt/chef-runner"
  version "0.6.0"

  if Hardware.is_64_bit?
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_amd64.zip"
    sha256 "c23103b1b43107e31d682751d71b40991d89cb3482a79c35e45017759471babc"
  else
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_386.zip"
    sha256 "c10750901c1c5ae2c31d83674d81e38036931ba5884f572d88757d2ed25be8f2"
  end

  def install
    bin.install "chef-runner"
  end

  def test
    system "#{bin}/chef-runner --version"
  end
end
