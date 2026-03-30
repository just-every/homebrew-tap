class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.87"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.87/code-aarch64-apple-darwin.tar.gz"
      sha256 "903b27c0f33d184ec0a989552a73799f53457dca1dda9b7524c535cb255512b1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.87/code-x86_64-apple-darwin.tar.gz"
      sha256 "751ae640535e75973f6589cf114d06c934eebc7b61f1d014fb05cab6a3dbc8b7"
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
