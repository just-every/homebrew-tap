class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.67"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.67/code-aarch64-apple-darwin.tar.gz"
      sha256 "2d83d2d0a4f39ab58b0ee6a27e0990869a09f733d310eb5c7efd1fb4a77e57eb"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.67/code-x86_64-apple-darwin.tar.gz"
      sha256 "b3ef934ae7bcdde931722b013be3756adab42e4bacc21ec9a84e9c9d751786ad"
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
