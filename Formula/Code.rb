class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.157"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.157/code-aarch64-apple-darwin.tar.gz"
      sha256 "bfc40c578aa6b4f4ce7ede4e1c71ecec727f7d3f3e6ba97c656e4e33cc6246a7"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.157/code-x86_64-apple-darwin.tar.gz"
      sha256 "c35e99e4a71e2aaf393fa40247ea1bcbce97552df6781096b49b75a602feaadc"
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
