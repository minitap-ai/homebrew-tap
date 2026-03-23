class MinitestCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Minitap testing workflows"
  homepage "https://github.com/minitap-ai/minitest-cli"
  url "https://files.pythonhosted.org/packages/5d/88/a21b33603dde65504316ab198335467691d1816b26c3c37aefb8b570470b/minitest_cli-0.4.0.tar.gz"
  sha256 "d89ba7fb43701b99a4da39664ed92ef8a73188612b08faedb0c9716331bcb91c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minitest --version")
  end
end
