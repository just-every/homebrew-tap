class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.180"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.180/code-aarch64-apple-darwin.tar.gz"
      sha256 "07f356c9ab17bb6ec33d0597521b5aa65f732501cbb84b770e5861d7ade1aa4c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.180/code-x86_64-apple-darwin.tar.gz"
      sha256 "0e2241b1335ec248630468d003b60f82fda265be435532e6a3cee680a3eceb73"
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
