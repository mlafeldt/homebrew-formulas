class Chaosmonkey < Formula
  desc     "Controlled failure injection with Chaos Monkey"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.5.4"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "9becb99733e1c2984542f01b1986aaf8c395b4ed43cd01e5052a10d552b28e44"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
