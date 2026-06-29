class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.133"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.133/code-aarch64-apple-darwin.tar.gz"
      sha256 "2e58e5167e859a6603df63d93f97e8f497b3cbe68b781f157db4c37c00e8c61f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.133/code-x86_64-apple-darwin.tar.gz"
      sha256 "448045252bfbe881bc60a68cb22ee34e2bb1e20557a2ef8f333705c97a4885a2"
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
