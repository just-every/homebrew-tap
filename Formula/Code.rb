class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.73"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.73/code-aarch64-apple-darwin.tar.gz"
      sha256 "e4855645634bf274c85ff7fc6e71e2a2cbaf68e7daa01428ad19dff676347c66"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.73/code-x86_64-apple-darwin.tar.gz"
      sha256 "ee06d926a943e1dd61357ce148eaef586a0fd25402333184f33607ed0e91464a"
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
