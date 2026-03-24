class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.85"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.85/code-aarch64-apple-darwin.tar.gz"
      sha256 "2a8d579021607ee796f6433bf570d793f95e19298b3857f486de5850eb873e3a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.85/code-x86_64-apple-darwin.tar.gz"
      sha256 "90c2670cbe029fd8040ab67b9d5220df98be0ef845cfe9513b574fe6c36ce71c"
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
