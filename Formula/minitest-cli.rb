class MinitestCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Minitap testing workflows"
  homepage "https://github.com/minitap-ai/minitest-cli"
  url "https://files.pythonhosted.org/packages/c3/20/b9e43322f1442b8510680575186607ce01f362a4783a2f3dbd3a5271c6a4/minitest_cli-0.1.0.tar.gz"
  sha256 "66cd3ca65616d02f7f2109971aa190272b975cbbc8d3c79b61bcef4c986704a1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minitest --version")
  end
end
