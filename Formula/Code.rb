class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.147"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.147/code-aarch64-apple-darwin.tar.gz"
      sha256 "b83eadcf98d716eead8eaf22b0f7e80491fe105dd9037bb00a60a41c6d52d533"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.147/code-x86_64-apple-darwin.tar.gz"
      sha256 "37bbb976f021ab1c1e73163c9ea4ddc870cb1f52f2fe9d372df48ab11dc01cea"
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
