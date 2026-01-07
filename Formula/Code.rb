class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.39"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.39/code-aarch64-apple-darwin.tar.gz"
      sha256 "f18c0b71b9f77705ebbc978cbbc9d36c678a797e3b3586c1e05cd5d2f4d741ab"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.39/code-x86_64-apple-darwin.tar.gz"
      sha256 "da32a16615ac44cc9fb97670935658deb7ae2107276af2727332f55c553c10ff"
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
