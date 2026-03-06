class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.75"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.75/code-aarch64-apple-darwin.tar.gz"
      sha256 "d335b8beb00a06a99fe0b9abc49b75dcd3ff4fe7ff67e611c6a98a8aeea5a0ff"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.75/code-x86_64-apple-darwin.tar.gz"
      sha256 "ed7ec7b913d858602f694582bf305eaa20513901b9353d2872ebed9bb8c3dd03"
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
