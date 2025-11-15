class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.16"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.16/code-aarch64-apple-darwin.tar.gz"
      sha256 "343cf0c4a3ddcb985211593f760d3478bacbf838e0caf5ac4a3ca5cc5160eb5a"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.16/code-x86_64-apple-darwin.tar.gz"
      sha256 "1f7eb2badc0fb0572c75b69741e48799090edcf0ba96972bb469e09c765f3915"
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
