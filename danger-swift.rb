class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/AnbionApps/danger-swift"
  version "1.4.0"
  url "https://github.com/AnbionApps/danger-swift/archive/1.4.0.tar.gz"
  sha256 "a9b54204b7f0c26f70aa7e29ea8dc121859f3621de8b141c6c21334ebdf65cd4"
  head "https://github.com/AnbionApps/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
