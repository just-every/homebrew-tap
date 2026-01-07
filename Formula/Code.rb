class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.40"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.40/code-aarch64-apple-darwin.tar.gz"
      sha256 "89c5eac0c7da427de3b68519de60b69e908a48b9100c9840d16dd4838efb6a47"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.40/code-x86_64-apple-darwin.tar.gz"
      sha256 "da239f9265324ef23ad82a2ec6ef186f0d8d6c0ce55c7d08b34f8d3cd8971b2b"
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
