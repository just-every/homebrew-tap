class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.114"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.114/code-aarch64-apple-darwin.tar.gz"
      sha256 "857ad89f779f03169fdcd224f36bb95fb0bc0b96da294213efe660a7b6fee55a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.114/code-x86_64-apple-darwin.tar.gz"
      sha256 "a13df30fd508412836a4c83a0139acdbb349fbd2fb679dbe73df55604435b6c6"
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
