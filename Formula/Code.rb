class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.53"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.53/code-aarch64-apple-darwin.tar.gz"
      sha256 "b349f5890579e007f48900c6cb8e268ac13a5bf9ca73f5c949a95734357e1ad3"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.53/code-x86_64-apple-darwin.tar.gz"
      sha256 "ea4af7b6cef59959d2aacc4335d24c17ff43bc83981c1745a20a82fb4bc72dd3"
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
