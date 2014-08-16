require "formula"

class ChefRunner < Formula
  homepage "https://github.com/mlafeldt/chef-runner"
  version "0.5.0"

  if Hardware.is_64_bit?
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_amd64.zip"
    sha256 "3b6b74d44fa3f3fc62dd48caf14ce2ac251880935d4ba86966ca7e068668586f"
  else
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_386.zip"
    sha256 "df6c3fab33f761a8f44760e76bdd07aec6b0322a7dde48ba85b7ee239225ffb7"
  end

  def install
    bin.install "chef-runner"
  end

  def test
    system "#{bin}/chef-runner --version"
  end
end
