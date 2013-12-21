require 'formula'

class ChefRunner < Formula
  homepage 'https://github.com/mlafeldt/chef-runner'
  url 'https://github.com/mlafeldt/chef-runner/archive/v0.1.1.zip'
  head 'https://github.com/mlafeldt/chef-runner.git'
  sha1 'b65a88f86bf90558c6b01fee1ff361f9101bc034'

  def install
    bin.install Dir['bin/chef-runner']
  end

end
