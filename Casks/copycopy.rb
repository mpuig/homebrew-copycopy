cask "copycopy" do
  version "0.3.0"
  sha256 "6202edca5556458b2ef306097001eb298e9c8286f035df71d5479cc8ac5529a0"

  url "https://github.com/mpuig/copycopy/releases/download/v#{version}/CopyCopy-v#{version}-macos.zip"
  name "CopyCopy"
  desc "Transform anything you copy"
  homepage "https://github.com/mpuig/copycopy"

  depends_on macos: ">= :sonoma"

  app "CopyCopy.app"

  zap trash: [
    "~/.copycopy",
    "~/Library/Preferences/com.copycopy.CopyCopy.plist",
  ]
end
