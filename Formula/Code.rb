class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.192"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.192/code-aarch64-apple-darwin.tar.gz"
      sha256 "6042baa6e58d623b06eeb8af1cdd8885ecf9267c5f339520b8c30ca508c6f496"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.192/code-x86_64-apple-darwin.tar.gz"
      sha256 "94dc77dd639a6ed761c2106b56bf6eff9a261cae3068c8ecbcbc3d94a1f056d4"
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
