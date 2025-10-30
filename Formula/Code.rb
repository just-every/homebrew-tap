class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.5"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.5/code-aarch64-apple-darwin.tar.gz"
      sha256 "3a0aa2ca235f9a5b345c713fbd5f012143738951b1cf62ced45b55a17e23cfb8"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.5/code-x86_64-apple-darwin.tar.gz"
      sha256 "7e29bc4f336c550a13993efee4f889079e607b9e3b3b6ebc44f829f3b588543c"
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
