class Chaosmonkey < Formula
  desc     "Controlled failure injection with Chaos Monkey"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.5.0"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "512b6f17efb21acd3a160734c2e7da2699b2d2be1aa88a80cc907d1c6222cfcc"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
