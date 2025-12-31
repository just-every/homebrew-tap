class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.23"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.23/code-aarch64-apple-darwin.tar.gz"
      sha256 "89ad7daec036208e6a35ffe4264c4366aa9cbb9896a298cada6b8bf3bc1e5a72"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.23/code-x86_64-apple-darwin.tar.gz"
      sha256 "0778f828f325d7438e82b76dae45334c564272e570d913c744a0fe9d35eb0f66"
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
