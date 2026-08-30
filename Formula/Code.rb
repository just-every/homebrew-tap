class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.174"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.174/code-aarch64-apple-darwin.tar.gz"
      sha256 "5109d5a2b981ea709e4a66e3792220c4ba40f8be64bb7165c06f46a80ab87d54"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.174/code-x86_64-apple-darwin.tar.gz"
      sha256 "e19e5f7488a3cbacdd765554c9f1cd0e989c7684255367e55c2316d67c2b821c"
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
