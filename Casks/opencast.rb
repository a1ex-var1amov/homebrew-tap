# Install:
#   brew tap a1ex-var1amov/tap
#   brew trust a1ex-var1amov/tap
#   brew install --cask opencast
cask "opencast" do
  version "0.2.9"
  sha256 "f67c5cee6d6c3a881ab1928d1b441c383a12e58e05554de786e3c9fcee1abcf7"

  url "https://github.com/a1ex-var1amov/opencast/releases/download/v#{version}/OpenCast-#{version}.dmg"
  name "OpenCast"
  desc "Open-source keyboard launcher with bring-your-own AI"
  homepage "https://github.com/a1ex-var1amov/opencast"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "OpenCast.app"

  uninstall quit: "dev.opencast.launcher"

  zap trash: [
    "~/.config/opencast",
    "~/Library/Preferences/dev.opencast.launcher.plist",
  ]
end
