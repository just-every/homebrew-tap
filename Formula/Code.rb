class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.68"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.68/code-aarch64-apple-darwin.tar.gz"
      sha256 "bf41d3e0f53a27cdfc34ef3d7853f753f684d5ddd68fbb6a5b92cceae2395044"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.68/code-x86_64-apple-darwin.tar.gz"
      sha256 "5dd5fa941ae2a78635e69183c2bf3b32f049cbfab755df142bb1a1256a72412e"
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
