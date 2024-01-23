cask "safeditool" do
  version "1.0.0"

  on_arm do
    sha256 "63277b06f9780a93f814097c3e17876fc09951f0e8c8654b27f1c47435f1343d"

    url "https://github.com/dfed/SafeDI/releases/download/#{version}/SafeDITool-arm64"

    binary "SafeDITool-arm64", target: "SafeDITool"
  end
  on_intel do
    sha256 "292e5a9d263f21fc11d6980d369d2b3fc1d465c25faa1491848dbe92da03f1c5"

    url "https://github.com/dfed/SafeDI/releases/download/#{version}/SafeDITool-x86_64"

    binary "SafeDITool-x86_64", target: "SafeDITool"
  end

  name "SafeDITool"
  desc "Code parsing and generation tool for SafeDI: compile-time-safe DI in Swift"
  homepage "https://github.com/dfed/SafeDI"
end
