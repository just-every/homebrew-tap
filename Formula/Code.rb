class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.120"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.120/code-aarch64-apple-darwin.tar.gz"
      sha256 "eb41422a31c7f886e8f3980807407ecd129e7797dbaf2be631a711d3774d4509"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.120/code-x86_64-apple-darwin.tar.gz"
      sha256 "355067990597e410d3719fc3802bbc7746b731bd92d5a82639cb8837c22de7a4"
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
