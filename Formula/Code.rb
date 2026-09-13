class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.187"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.187/code-aarch64-apple-darwin.tar.gz"
      sha256 "7c3dae0f033d93a41bbb0a6f9c46c933dc83c90811b8de568c7d0a3526becda7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.187/code-x86_64-apple-darwin.tar.gz"
      sha256 "931c959ab34268edd414ded7d3dfd3b2125b900904403cba3d979199e67e5aba"
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
