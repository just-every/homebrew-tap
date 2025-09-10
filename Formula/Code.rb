class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.108"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.108/code-aarch64-apple-darwin.tar.gz"
      sha256 "9695ad45dc973a16782b8bd75350a355f45b427dc6991719c20042d82f3634ac"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.108/code-x86_64-apple-darwin.tar.gz"
      sha256 "c7ae9799e804d71a952d8c08f7a80319c96fc06e987c84590f4fa77fb3570d78"
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
