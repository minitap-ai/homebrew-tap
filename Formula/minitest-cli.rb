class MinitestCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for Minitap testing workflows"
  homepage "https://github.com/minitap-ai/minitest-cli"
  url "https://files.pythonhosted.org/packages/0e/9f/5232e54d044e51bbfea6eb2f2c5d49619eb83f1ca119fb74c13d42da4639/minitest_cli-0.2.0.tar.gz"
  sha256 "61420963534326e1346316046f9c2496a25eb1999bd4f2cec35eb2563a9d35ca"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minitest --version")
  end
end
