class Chaosmonkey < Formula
  desc     "Go client to the Chaos Monkey REST API"
  homepage "https://github.com/mlafeldt/chaosmonkey"
  version  "0.4.0"
  url      "https://github.com/mlafeldt/chaosmonkey/releases/download/v#{version}/chaosmonkey_darwin_amd64"
  sha256   "e9c3a167b470341b7b867d6424df85515310cc9d32cb81e9fe5fa725384f1de5"

  bottle :unneeded

  def install
    bin.install "chaosmonkey_darwin_amd64" => "chaosmonkey"
  end

  test do
    system "#{bin}/chaosmonkey --version"
  end
end
