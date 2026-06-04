class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.103"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.103/code-aarch64-apple-darwin.tar.gz"
      sha256 "866c648eb0a423ef690b3705cd7a15537dcb86705edbdfa8f7e72c928871226e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.103/code-x86_64-apple-darwin.tar.gz"
      sha256 "841183e11d05f0d816fb57208e7a81ea6dec1cbd953ccbfbb04c09998ae031f9"
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
