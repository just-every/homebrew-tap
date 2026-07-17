class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.149"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.149/code-aarch64-apple-darwin.tar.gz"
      sha256 "9fb28ec2d3ad23a23924d5707f5d17b069005a262698b174fb9d3670cc820369"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.149/code-x86_64-apple-darwin.tar.gz"
      sha256 "00ccbfedee3fe8b6f266a1018bb3f43d04dc8546646cfbc3ff2f7146b4907ced"
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
