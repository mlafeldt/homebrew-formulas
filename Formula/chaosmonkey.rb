class Chaosmonkey < Formula
  desc     "Go client to the Chaos Monkey REST API"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.3.0"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "8578533c978689570484dd178184bfb9a136ea86672646b8c4418619b5967f3e"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
