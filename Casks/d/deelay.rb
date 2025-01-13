cask "deelay" do
  version "1.3.0,2024,10"
  sha256 "34f3aad84a4abe5e5216359d4c7c8d616d7e0711f99f994ccca29cce19c42603"

  url "https://sixthsample.com/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/Deelay-#{version.csv.first}.zip"
  name "Deelay"
  desc "Delay plugin"
  homepage "https://sixthsample.com/deelay/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\w+)/(\w+)/deelay[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "Deelay-#{version.csv.first}/Deelay-#{version.csv.first}-Installer.pkg"

  uninstall pkgutil: [
    "com.sixthsample.pkg.deelay.aax",
    "com.sixthsample.pkg.deelay.au",
    "com.sixthsample.pkg.deelay.presets",
    "com.sixthsample.pkg.deelay.vst3",
  ]

  zap trash: "~/Library/Application Support/Sixth Sample/Deelay.preferences"
end