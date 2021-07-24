# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tinymd < Formula
  desc "A tiny markdown compiler based on Jesse's tutorials" 
  homepage "https://github.com/ryanmercadante/tinymd"
  url "https://github.com/ryanmercadante/tinymd/archive/refs/tags/v0.1-alpha.tar.gz"
  sha256 "e03a3ddc7247151c39b933f9a21a292c6b4c27079db58a5ad0f827969fa8ba56"
  version "0.1.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tinymd"
    bin.install "target/release/tinymd"
  end
end