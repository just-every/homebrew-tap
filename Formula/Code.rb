class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.138"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.138/code-aarch64-apple-darwin.tar.gz"
      sha256 "5681437667f9f29eb4886402f94f8bb7291715deea38748822b5f5d0574484d6"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.138/code-x86_64-apple-darwin.tar.gz"
      sha256 "54abcdfb33a525bf823bd1c87b0e9338cedcf2db90d1a638e37a5179d53ecd46"
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
