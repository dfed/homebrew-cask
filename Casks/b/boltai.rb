cask "boltai" do
  version "1.30.3"
  sha256 "7d561ee34426ca32923b8bc70bc67281a5f3c066bfd36d70646177d545bdbc9c"

  url "https://download.boltai.com/releases/BoltAI-#{version}.dmg"
  name "BoltAI"
  desc "AI chat client"
  homepage "https://boltai.com/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://boltai.com/sparkle/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "BoltAI.app"

  zap trash: [
    "~/Library/Application Support/co.podzim.BoltGPT",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.podzim.BoltGPT.*",
    "~/Library/Caches/co.podzim.BoltGPT",
    "~/Library/HTTPStorages/co.podzim.BoltGPT",
    "~/Library/Preferences/co.podzim.BoltGPT.plist",
    "~/Library/Saved Application State/co.podzim.BoltGPT.savedState",
    "~/Library/WebKit/co.podzim.BoltGPT",
  ]
end
