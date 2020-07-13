require "language/node"

class Openv < Formula
  desc "Command Line Interface to set terminal session environment variables from 1Password secret notes"
  homepage "https://github.com/tobiastrinks/openv#readme"
  url "https://registry.npmjs.org/@ttrinks/openv/-/openv-1.0.1.tgz"
  version "1.0.1"
  sha256 "c25b9e1bfe327dae5ac1ff0ca0f7433f19fc97dc3f6ad01ac68d545f5868847b"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
