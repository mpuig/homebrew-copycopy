cask "copycopy" do
  version "0.2.2"
  sha256 "c1023178258edc1e20a3f5036cb745b3727294609d2db89d40fc03bbf3da9a42"

  url "https://github.com/mpuig/copycopy/releases/download/v#{version}/CopyCopy-#{version}.zip"
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
