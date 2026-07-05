cask "copycopy" do
  version "0.5.1"
  sha256 "b6e3eaf033f2630a15c6b3114268ab0ab4bce14759be52632d78cf9c44636dec"

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
