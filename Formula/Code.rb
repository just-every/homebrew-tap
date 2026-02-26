class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.71"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.71/code-aarch64-apple-darwin.tar.gz"
      sha256 "6ca4e6f587479e83d9663048824b193fe9a93be526cadb850483eb849333094e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.71/code-x86_64-apple-darwin.tar.gz"
      sha256 "2341f200b2b0fa0d77aa381c0a29ac320212082239a9c9bf1f264643d27f7cf0"
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
