class MinitestCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Minitap testing workflows"
  homepage "https://github.com/minitap-ai/minitest-cli"
  url "https://files.pythonhosted.org/packages/e1/1b/b606ded882d3a07e7461b5cd1fde77339cf0cf9bf5bfe19da88550cbc5e1/minitest_cli-0.4.1.tar.gz"
  sha256 "3a3fb34535bf9e755910b646cf12df99bc6b5e0e191b7c7258c2285c8e5d1987"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minitest --version")
  end
end
