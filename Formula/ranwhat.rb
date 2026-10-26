class Ranwhat < Formula
  include Language::Python::Virtualenv

  desc "Flight recorder and secret scanner for AI coding agents"
  homepage "https://ranwhat.com"
  url "https://files.pythonhosted.org/packages/e3/60/b843dca3743ba150dc5108f313d49fa36b4afad25089e44ebc6bc07c0bdd/ranwhat-0.7.0.tar.gz"
  sha256 "880c32ebe7887e3c50403bd4e757d335e9339ceb547e2bcf9cefb58223bb8e85"
  license "MIT"

  depends_on "python@3.14"

  # ranwhat has no runtime dependencies, so there are no resource blocks.

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ranwhat --version")
    # The demo runs on bundled sample data and reads nothing from the machine.
    system bin/"ranwhat", "demo"
  end
end
