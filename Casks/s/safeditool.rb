cask "safeditool" do
  version "0.3.12"

  on_arm do
    sha256 "ace19e9731ae61b308b3b6fab9bac7140821365d1eb41d19b14f1a77d9573ddf"

    url "https://github.com/dfed/SafeDI/releases/download/#{version}/SafeDITool-arm64"
  end
  on_intel do
    sha256 "185dc871be691abcd48ba8eca2d9ba7575d4d2c9e46be2d8dc64d0ef74ad85ec"

    url "https://github.com/dfed/SafeDI/releases/download/#{version}/SafeDITool-x86_64"
  end

  name "SafeDITool"
  desc "Code parsing and generation tool for SafeDI: compile-time safe DI in Swift"
  homepage "https://github.com/dfed/SafeDI"

  binary "SafeDITool"
end
