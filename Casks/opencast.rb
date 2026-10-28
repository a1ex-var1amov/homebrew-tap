# Install:
#   brew tap a1ex-var1amov/tap && brew trust a1ex-var1amov/tap
#   brew install --cask opencast
cask "opencast" do
  version "0.2.2"
  sha256 "d70dbbf6ee8d6000a6e4d11526fe63de4332bed41140d8c7e8fa2dde5e94e9ff"

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