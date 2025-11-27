class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.11"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.11/code-aarch64-apple-darwin.tar.gz"
      sha256 "5b7776ac7214b5bce570d2bf7bcd7105f6216b3284d5c0ea88491ca98d0b22cf"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.11/code-x86_64-apple-darwin.tar.gz"
      sha256 "3ec6347dd50e1ee330e49caecaa103bb8b96f0c456bbb4db7d05be401ef94552"
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
