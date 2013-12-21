require 'formula'

class ChefRunner < Formula
  homepage 'https://github.com/mlafeldt/chef-runner'
  url 'https://github.com/mlafeldt/chef-runner/archive/v0.1.1.zip'
  head 'https://github.com/mlafeldt/chef-runner.git'

  def install
    bin.install Dir['bin/chef-runner']
  end

end
