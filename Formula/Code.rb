class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.91"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.91/code-aarch64-apple-darwin.tar.gz"
      sha256 "0a6983c7033d46e86385556f77cb08dc60c8c1afc09785f0defb5efa68b172e0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.91/code-x86_64-apple-darwin.tar.gz"
      sha256 "d1cd2f064a00c53d59eee82586a5a88fa5f681b43f97e1a7184563f89a0d0ce4"
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
