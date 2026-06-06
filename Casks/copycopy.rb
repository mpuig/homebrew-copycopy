cask "copycopy" do
  version "0.4.0"
  sha256 "6ac7fe687fd374d51148be90b13f0dca97bea27cb24ba3573b8c6e936e1579c7"

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
