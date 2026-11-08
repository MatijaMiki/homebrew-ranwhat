class Ranwhat < Formula
  include Language::Python::Virtualenv

  desc "Flight recorder and secret scanner for AI coding agents"
  homepage "https://ranwhat.com"
  url "https://files.pythonhosted.org/packages/2e/e9/e970a246835c3d171ab79c6e3000f27edd3f6bcb5555a958c4c2d6daf3fb/ranwhat-0.9.0.tar.gz"
  sha256 "1afd326657c204b95c19af5edd996453ad372dafb0f2f4a6ee1858e8d4d95673"
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
