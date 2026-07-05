cask "copycopy" do
  version "0.4.1"
  sha256 "8b0ebaf95c6e5873f8fd406cc72fac5f8a9cde930540ca3e310f065d8c33b820"

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
