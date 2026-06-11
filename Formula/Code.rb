class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.112"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.112/code-aarch64-apple-darwin.tar.gz"
      sha256 "68f05ba5741c07e12f068ca5ff177dfb4e3d6a82091f33571316e8e8e058d970"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.112/code-x86_64-apple-darwin.tar.gz"
      sha256 "aa0aea45c4de03c323a3e590c486b35eb8e706bcfd30e48fb70ec8acb70780e9"
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
