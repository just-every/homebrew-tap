class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.145"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.145/code-aarch64-apple-darwin.tar.gz"
      sha256 "d385a72112c77d08a2a269b5a6494ff332a34f61a55243230149d78d998b928f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.145/code-x86_64-apple-darwin.tar.gz"
      sha256 "e26a499b7e6121f78f7f24e5f75642bff181549cfc1cc8082124a67121b51a15"
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
