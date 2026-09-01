class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.177"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.177/code-aarch64-apple-darwin.tar.gz"
      sha256 "b2befcd7e03079d3472808c13b3e1f3953178a35985e0940210524f6eeb481ea"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.177/code-x86_64-apple-darwin.tar.gz"
      sha256 "ba657df76518c222fb158cad74707de6c5cfff67f4f0a0ce93d238012ff59118"
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
