class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "737ae6ce7157746f7b79ed54b8c3cd76750eb7afa85eac42d00b8905cc7687cc"
    else
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "c221fdd5332c0fa1070021e2485cd6443de3acd9813fbe1e5e625918299cef10"
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
