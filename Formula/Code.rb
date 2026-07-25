class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.153"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.153/code-aarch64-apple-darwin.tar.gz"
      sha256 "1e975085cecd5a64e3ee231b69396023b62cfd6970f8a7cf9556c68d4c3511a6"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.153/code-x86_64-apple-darwin.tar.gz"
      sha256 "76ed22347e0ebbd4bf663b81d58969725a5bb81a46d8e994f6ec03c5bea8b445"
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
