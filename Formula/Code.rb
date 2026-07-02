class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.136"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.136/code-aarch64-apple-darwin.tar.gz"
      sha256 "bc8423cac5e315d1d3ba917bb5b6a1d4c041463845cfbe455dd72ccc77c64fc1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.136/code-x86_64-apple-darwin.tar.gz"
      sha256 "f101b4fb72687b9a07e628ecced9f887a0bcfa5a3f4616e76a1a7e798f34845b"
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
