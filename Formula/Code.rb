class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.140"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.140/code-aarch64-apple-darwin.tar.gz"
      sha256 "24047607803ee9bfa1800c2de95ffb0f251b9718c17e502818eccc6ea5d211dc"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.140/code-x86_64-apple-darwin.tar.gz"
      sha256 "dc8da727a81830c5a7f6b65c725ae29f64246f7b8a4bc052934f4b3242b0c792"
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
