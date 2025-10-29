class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.4"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.4/code-aarch64-apple-darwin.tar.gz"
      sha256 "743ed298494794134fff13f1018bb9658cfcf85c3fcf832b16601a69ab9dfce7"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.4/code-x86_64-apple-darwin.tar.gz"
      sha256 "ff8f5f003f7dc1b7d5760d9a61c1a787ef399ef64da8c48da71a2d7575100ce0"
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
