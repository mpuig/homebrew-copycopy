cask "copycopy" do
  version "0.5.2"
  sha256 "af5c802a4c1b76fa050f10b2c9df524773b9c4d273a77204d4ba772c46efed5c"

  url "https://github.com/mpuig/CopyCopy/releases/download/v#{version}/CopyCopy-v#{version}-macos.zip"
  name "CopyCopy"
  desc "Local action harness for your clipboard"
  homepage "https://copycopy.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "CopyCopy.app"

  uninstall quit: "com.copycopy.CopyCopy"

  zap trash: [
    "~/.copycopy",
    "~/Library/Preferences/com.copycopy.CopyCopy.plist",
    "~/Library/Saved Application State/com.copycopy.CopyCopy.savedState",
  ]
end
