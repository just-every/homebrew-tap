class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.43"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.43/code-aarch64-apple-darwin.tar.gz"
      sha256 "f76093d47ad1b355fec6fe8fbed5113a1c64378262a93f5e4eb6838f914d5899"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.43/code-x86_64-apple-darwin.tar.gz"
      sha256 "838f7fb01731b94e55b93dbb3e48049093fcafda1b41c51102941f9abae13bd9"
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
