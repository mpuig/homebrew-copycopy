cask "copycopy" do
  version "0.3.0"
  sha256 "3be9ff850b2496440649f254ecd767715cb5656324d90730bb55e6229a1c4fa6"

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
