class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.84"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.84/code-aarch64-apple-darwin.tar.gz"
      sha256 "130e7d86fdeb95a306cf8391c8817d5b416e1b7b3a77fa913cbd710e8e2ed772"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.84/code-x86_64-apple-darwin.tar.gz"
      sha256 "e794241c5a6e4be3272f1b389e7a2f47a4167c173e2e69a2e0454c075ba2b179"
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
