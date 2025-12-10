class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "d14ae5e8169f353ddd1d85b00cc83b47ef2607d732ea3e271fd4792bc97985f4"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "4f116f58b3bbe87813c52f8862eacb99c40ea8139bc96eea90a3acf2483e3dfa"
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
