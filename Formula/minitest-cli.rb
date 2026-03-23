class MinitestCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Minitap testing workflows"
  homepage "https://github.com/minitap-ai/minitest-cli"
  url "https://files.pythonhosted.org/packages/f6/41/ec08e347477f04acfea19de7af3c0e73d7c2a3aed8c7992235b22001727d/minitest_cli-0.3.0.tar.gz"
  sha256 "74b0cfda72a77592e3ccb41494deb78b36c5d6fa4c8dab2d4eb2678afd7b5e24"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minitest --version")
  end
end
