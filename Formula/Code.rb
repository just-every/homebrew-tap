class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.155"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.155/code-aarch64-apple-darwin.tar.gz"
      sha256 "7c6955fdf39aef9c0a480f32350b514cb3a854a072ab285ae5ac686b495c243b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.155/code-x86_64-apple-darwin.tar.gz"
      sha256 "d2b33802bbdbf6eaea90806b50476584371b205b1ee7be049e60db380b950c23"
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
