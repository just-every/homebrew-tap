class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.77"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.77/code-aarch64-apple-darwin.tar.gz"
      sha256 "f76313da14dfd01ce8660d34488e1faebdfb93449a804f994783b68b32669f75"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.77/code-x86_64-apple-darwin.tar.gz"
      sha256 "9ef1d1493b7dc31e134f9f74c1da94f41dda15bf68a9198d7c14385c1b48ee41"
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
