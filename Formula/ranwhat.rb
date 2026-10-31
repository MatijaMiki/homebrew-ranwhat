class Ranwhat < Formula
  include Language::Python::Virtualenv

  desc "Flight recorder and secret scanner for AI coding agents"
  homepage "https://ranwhat.com"
  url "https://files.pythonhosted.org/packages/45/1b/d394ecf583c108d157807de9fe361b55f896487b4c23c6d6b0046ea85b0f/ranwhat-0.8.0.tar.gz"
  sha256 "a23c2323f88d9a2c1eb21e4ae2ec80d2243c25e28305cc4dc64c67236f6dffc2"
  license "MIT"

  depends_on "python@3.14"

  # ranwhat has no runtime dependencies, so there are no resource blocks.

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal version.to_s,
                 shell_output("#{libexec}/bin/python -c 'import ranwhat; print(ranwhat.__version__)'").strip
    # The demo runs on bundled sample data and reads nothing from the machine.
    system bin/"ranwhat", "demo"
  end
end
