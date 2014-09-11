require "formula"

class ChefRunner < Formula
  homepage "https://github.com/mlafeldt/chef-runner"
  version "0.7.0"

  if Hardware.is_64_bit?
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_amd64.zip"
    sha256 "9e9ce45210da5ec06de825bf7ebee94a94e83de552730ed4fb1e05a62fff0f00"

  else
    url "https://github.com/mlafeldt/chef-runner/releases/download/v#{version}/chef-runner_#{version}_darwin_386.zip"
    sha256 "b8b69b65d3a3f304254fa649283cb0c47851ae1f57525bf2948f7a5036bb8adb"
  end

  def install
    bin.install "chef-runner"
  end

  def test
    system "#{bin}/chef-runner --version"
  end
end
