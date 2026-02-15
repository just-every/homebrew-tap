class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.69"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.69/code-aarch64-apple-darwin.tar.gz"
      sha256 "cc5b586b73d1557dd69aa76a7327b724ea19dd59da9098fb46650e59b7966f57"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.69/code-x86_64-apple-darwin.tar.gz"
      sha256 "017a8a6527d109cae926847774570f00af751df82c359a7c87c1cc65c8cf0eb8"
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
