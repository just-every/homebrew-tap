class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.9"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.9/code-aarch64-apple-darwin.tar.gz"
      sha256 "a23adff2043274756d2146f7cbf233c732bbd179529d185ba002a0afa026421a"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.9/code-x86_64-apple-darwin.tar.gz"
      sha256 "5f88c0619cae6c97dfadf7aa12fb45552574c9f790d640b6dfec69460c3b1a24"
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
