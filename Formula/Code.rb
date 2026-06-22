class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.128"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.128/code-aarch64-apple-darwin.tar.gz"
      sha256 "10ca92c0b68a22cd508b7e876b399ae8847e54716952f952c17738ad6c8fef8e"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.128/code-x86_64-apple-darwin.tar.gz"
      sha256 "5f04e37a8f445da004b7989fdfe751e2eb033342e9d98f209d985f01f93bcb47"
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
