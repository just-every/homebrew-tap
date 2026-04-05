class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.92"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.92/code-aarch64-apple-darwin.tar.gz"
      sha256 "b6e8d12ca7747b342791a8d4821b4dd6498858a6f67fdefb8fe6ffdfbc7afe9d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.92/code-x86_64-apple-darwin.tar.gz"
      sha256 "78a6150856b33ffa36ab9a7b508f46a2c7d7f071c65a0b913a7def079b538677"
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
