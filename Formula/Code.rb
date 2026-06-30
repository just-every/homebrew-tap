class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.134"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.134/code-aarch64-apple-darwin.tar.gz"
      sha256 "bcf7fe6cff6f7736985da85da4a2ec515580d630398ba78e2ae196d0c38db3f9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.134/code-x86_64-apple-darwin.tar.gz"
      sha256 "ab9cb4d05c0d43d0590fdb460b55af4e3e86c34a6dd1af85b49ddc248ade6d80"
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
