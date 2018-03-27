class Chaosmonkey < Formula
  desc     "Controlled failure injection with Chaos Monkey"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.5.3"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "effe075bc49881453661d967f3497574f95a811f7b4b4f26ec76d73d876ec224"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
