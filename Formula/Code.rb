class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.96"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.96/code-aarch64-apple-darwin.tar.gz"
      sha256 "6074fe703c00b0839508b57668b78c2d5edc0d307f0bcdde4bc5592dff0ac52d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.96/code-x86_64-apple-darwin.tar.gz"
      sha256 "9984b6f4c57ae2d439bb01a923982cf8905527482633fecb04fa04486f4b9ba5"
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
