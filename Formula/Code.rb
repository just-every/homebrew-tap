class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.33"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.33/code-aarch64-apple-darwin.tar.gz"
      sha256 "ebafacd9f4d914b862e8c02130c6634bc2c18bb0fad299e20dc9cdef2460bc1f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.33/code-x86_64-apple-darwin.tar.gz"
      sha256 "df8df63cf16b517002752a6ac808a4f44b7aa37d28bf9346e43d5c71038df543"
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
