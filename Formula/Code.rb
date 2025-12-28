class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.17"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.17/code-aarch64-apple-darwin.tar.gz"
      sha256 "5930746b1d0e3eef6009e3dc8efdd238844bb42fb76edf7403b8d39260346483"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.17/code-x86_64-apple-darwin.tar.gz"
      sha256 "245fe0f42de62f25b1166f89697d799271d2eafccea0db1a5f7cec2135812f34"
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
