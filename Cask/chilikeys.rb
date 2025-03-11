cask "chilikeys" do
  version "2.0.3"
  sha256 "489181bb0e9cd658b9d36d3fdc0301cf00c011fef170192b6b5bdd939ca78235"

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
