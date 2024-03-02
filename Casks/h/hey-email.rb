cask "hey-email" do
    arch arm: "aarch64", intel: "x86_64"

    version :latest
    sha256 :no_check

    url "https://hey-desktop.s3.amazonaws.com/HEY#{arch == "aarch64" ? "-arm64" : ""}.dmg",
        verified: "hey-desktop.s3.amazonaws.com/"
    name "HEY Email"
    desc "HEY email client"
    homepage "https://www.hey.com"
    auto_updates true
    depends_on macos: ">= :catalina"

    app "HEY.app"
  end
