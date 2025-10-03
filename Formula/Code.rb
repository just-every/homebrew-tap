class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.184"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.184/code-aarch64-apple-darwin.tar.gz"
      sha256 "f8aeaf119376a605a2051a4efebc9499a32e3f0809e1512733fc6799e36327ef"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.184/code-x86_64-apple-darwin.tar.gz"
      sha256 "54ae74e8ece21aa32854999dc149185ca1e951b8e7ed469be4f8179d9b6e92b5"
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
