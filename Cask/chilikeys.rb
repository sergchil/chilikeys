cask "chilikeys" do
  version "2.0.0"
  sha256 ""

  url "https://github.com/sergchil/chilikeys/releases/download/v#{version}/ChiliKeys-v#{version}.zip"
  name "ChiliKeys"
  desc "Advanced Armenian keyboard layout"
  homepage "https://github.com/sergchil/chilikeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  artifact "ChiliKeys.keylayout",
           target: "#{Dir.home}/Library/Keyboard Layouts/ChiliKeys.keylayout"

  artifact "ChiliKeys.icns",
           target: "#{Dir.home}/Library/Keyboard Layouts/ChiliKeys.icns"

  zap trash: [
    "~/Library/Keyboard Layouts/ChiliKeys.icns",
    "~/Library/Keyboard Layouts/ChiliKeys.keylayout"
  ]

  caveats <<~EOS
    After installing, open System Settings -> Keyboard -> Input Sources,
    and add "ChiliKeys" from the list. Enjoy your custom layout!
  EOS
end
