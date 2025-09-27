class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.171"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.171/code-aarch64-apple-darwin.tar.gz"
      sha256 "bfe7b0d1cdbcfd56b483197231a7724676a60227d3369daa7a64cf47523178e2"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.171/code-x86_64-apple-darwin.tar.gz"
      sha256 "87dcc9c3d0ec645515ead77645aea0aa65f4f95c78c0b29916e0033866dd57b8"
    end
  end

  def install
    bin.install Dir["code-*"].first => "code"
    # Provide a compatibility shim
    (bin/"coder").write <<~EOS
      #!/bin/bash
      exec "#{bin}/code" "$@"
    EOS
  end

  test do
    system "#{bin}/code", "--help"
  end
end
