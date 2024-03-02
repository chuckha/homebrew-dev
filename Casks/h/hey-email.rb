cask "hey-email" do
    arch arm: "aarch64", intel: "x86_64"

    version "1.2.14"
    sha256 arm:   "c9e795ef646164e11d065d9829fff9cfab768f8848ce737096bae9a31b3e56b8",
           intel: "790aab1e7ff2466cecf8241922946ef0233c3189e531b600c21cc33b39a33594"

    url "https://hey-desktop.s3.amazonaws.com/HEY#{arch == "aarch" ? "-arm64" : ""}.dmg",
        verified: "hey-desktop.s3.amazonaws.com/"
    name "HEY Email"
    desc "HEY email client"
    homepage "https://www.hey.com"

    depends_on macos: ">= :catalina"

    app "HEY.app"
  end
