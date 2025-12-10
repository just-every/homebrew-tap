class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "f4f121f430e427061c20f3c18668ba6477f7c88abf52715357b019d4f86455e1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "6145138a6f7e72763da3c8fed428f54000d2168b41f213e3a1ad3724fdd98772"
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
