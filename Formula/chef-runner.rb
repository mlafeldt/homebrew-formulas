require "formula"

class ChefRunner < Formula
  homepage "https://github.com/mlafeldt/chef-runner"
  version "0.8.0"

  if Hardware.is_64_bit?
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_amd64.zip"
    sha256 "ce62b5b731511977880c7c18f696e604dfd058921a6c74275b2199cacdf7a577"

  else
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_386.zip"
    sha256 "2cd9a6a539feeb3d8c372bdbf3b98a2bcd6c4f0c079156c62a1f42b0d5f1f2fa"
  end

  def install
    bin.install "chef-runner"
  end

  def test
    system "#{bin}/chef-runner --version"
  end
end
