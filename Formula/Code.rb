class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.13"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.13/code-aarch64-apple-darwin.tar.gz"
      sha256 "23f99bd46d7ba778c55d5da97546d78523e03dc73606d45ef39141bd85effb2a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.13/code-x86_64-apple-darwin.tar.gz"
      sha256 "f0ab859e4462794db82c42f42a5a18bcd1e499db784057ae34e4fc216fd678aa"
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
