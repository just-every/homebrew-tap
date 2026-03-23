class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.80"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.80/code-aarch64-apple-darwin.tar.gz"
      sha256 "467ddd3c03134dd413a13856ab80b3b5ee77aec97fb89a1976324802e6574b7d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.80/code-x86_64-apple-darwin.tar.gz"
      sha256 "1f3a4d0dab236f4f1c71b7424d24dbd1543964204d844398602f9281551d6049"
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
