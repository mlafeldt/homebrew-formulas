require "formula"

class ChefRunner < Formula
  homepage "https://github.com/mlafeldt/chef-runner"
  version "0.9.0"

  if Hardware.is_64_bit?
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_amd64.zip"
    sha256 "f135b5dd9df8af692c5a048d348d514d3db64615a17a72774b871e6fa7b7d3ba"

  else
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_386.zip"
    sha256 "ce0b959a11677f275dcdb628efc31b8458af2b3f4c790192b11e43e4485d03a1"
  end

  def install
    bin.install "chef-runner"
  end

  def test
    system "#{bin}/chef-runner --version"
  end
end
