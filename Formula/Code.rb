class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.10"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.10/code-aarch64-apple-darwin.tar.gz"
      sha256 "1bad4a9cc10fd1149009e682def06cae779f8b059d11c905700ff2ae14a2c96c"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.10/code-x86_64-apple-darwin.tar.gz"
      sha256 "104ed7ca4be58764323772686aff136acc718ded44b9d70cb0b9456f1bd6055b"
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
