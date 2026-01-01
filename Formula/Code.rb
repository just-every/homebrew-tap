class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.25"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.25/code-aarch64-apple-darwin.tar.gz"
      sha256 "ff7014afce89b63729904b12d4ed88665df4dc0724e62b225b2bd122d36d7830"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.25/code-x86_64-apple-darwin.tar.gz"
      sha256 "dceeb91bcf45321ecd8652af1a65efde919aab4e1b98d10db0878404640d30bf"
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
