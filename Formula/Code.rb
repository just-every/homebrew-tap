class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.183"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.183/code-aarch64-apple-darwin.tar.gz"
      sha256 "a4d690e9badac275bd40ce74a2db116ee74f8e6e96f2f029946320f9c926ed0c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.183/code-x86_64-apple-darwin.tar.gz"
      sha256 "85c8a7e8639be62efe3106807407c9f928c105603076420ad027a7a343bb76f6"
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
