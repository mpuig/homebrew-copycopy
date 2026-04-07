cask "copycopy" do
  version "0.3.1"
  sha256 "217c5b2d1506510f2832753747aa8b621d029c477ba5541d21a17c824ed13bda"

  url "https://github.com/mpuig/copycopy/releases/download/v#{version}/CopyCopy-v#{version}-macos.zip"
  name "CopyCopy"
  desc "Transform anything you copy"
  homepage "https://github.com/mpuig/copycopy"

  depends_on macos: ">= :sonoma"

  app "CopyCopy.app"

  uninstall quit:   "com.copycopy.CopyCopy",
            delete: "/Applications/CopyCopy.app"

  zap trash: [
    "~/.copycopy",
    "~/Library/Preferences/com.copycopy.CopyCopy.plist",
  ]
end
