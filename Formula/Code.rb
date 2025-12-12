class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.3"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.3/code-aarch64-apple-darwin.tar.gz"
      sha256 "80c8d542314b40826afb5a0a9af1f57dbd45ced96ccd48bc005756853c465e21"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.3/code-x86_64-apple-darwin.tar.gz"
      sha256 "b77c502567b5adfb80f606150d59de44002ce393a75eec76100b283cdb6558c3"
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
