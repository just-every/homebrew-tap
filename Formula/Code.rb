class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "64505697471275c3e114a7d664be9b7f797f757f10403090579b7a7bd0df95f4"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "c5b7a15cb1a666b2f85cc65b88fc295e82857aff998dafd426868d9bb891b1d6"
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
