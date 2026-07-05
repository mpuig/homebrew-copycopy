cask "copycopy" do
  version "0.5.0"
  sha256 "ba26209f4649efd5236f386c126396fedafb7d42435a12b003694395371e9cee"

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
