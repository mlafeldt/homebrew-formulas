class Chaosmonkey < Formula
  desc     "Controlled failure injection with Chaos Monkey"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.5.2"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "9823503ee3185221a623677cf0a7a6de4503aefcf7698436fb51052558a964ea"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
