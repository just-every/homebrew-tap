class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.58"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.58/code-aarch64-apple-darwin.tar.gz"
      sha256 "7fd978531820612f41b94c40474ba26f6e4d8a5c0d5650b8dfca61d08ae0f413"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.58/code-x86_64-apple-darwin.tar.gz"
      sha256 "1a0b7eb6eb37afee24bd702bd675a5a44428e2e1dfa95d12f5bf6fe91d49e98d"
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
