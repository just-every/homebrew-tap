class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.48"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.48/code-aarch64-apple-darwin.tar.gz"
      sha256 "a503d9cf18e97a36c75689809706f0429853e4a25109b69a366713e9eaa6ff39"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.48/code-x86_64-apple-darwin.tar.gz"
      sha256 "ec8ebec1c94c0407c8bb35b46c971adc5b9b031af8adc73b5d30d36ad06f81a2"
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
