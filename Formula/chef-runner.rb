require 'formula'

class ChefRunner < Formula
  homepage 'https://github.com/mlafeldt/chef-runner'
  url 'https://github.com/mlafeldt/chef-runner/archive/v0.1.2.zip'
  head 'https://github.com/mlafeldt/chef-runner.git'
  sha1 'c312422b010caa04a7a38abb5e255ae7139fc0ff'

  def install
    bin.install Dir['bin/chef-runner']
  end

end
