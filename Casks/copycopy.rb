cask "copycopy" do
  version "0.3.0"
  sha256 "543d6122eea39e7e0124e4743f797c2fe7cc77d2c08dff16666dbe7db6eaa95a"

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
