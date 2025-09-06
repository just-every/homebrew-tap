class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.74"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.74/code-aarch64-apple-darwin.tar.gz"
      sha256 "9f429afc04116c6b02fc21f06cc43a94d9cddf5e45d83073d87cb4763d052a40"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.74/code-x86_64-apple-darwin.tar.gz"
      sha256 "0a90732ca631ce8d362ecbe311cae8534748ca7041cd1d6f82325dae10e8efa8"
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
