cask "copycopy" do
  version "0.3.1"
  sha256 "db24f7b37d291f64b138888d2dc224be6c40ff0c11d6c4e6f18c1b2303528157"

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
