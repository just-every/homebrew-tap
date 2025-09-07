class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.79"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.79/code-aarch64-apple-darwin.tar.gz"
      sha256 "207f06359a02625f6f5fbdb332fbf93e32360e727d4c23c603998a88379e13fe"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.79/code-x86_64-apple-darwin.tar.gz"
      sha256 "df36951a7487e34ba4115bb1352553f69d01b82a31739a7048f2962ca0b343de"
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
