class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.12"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.12/code-aarch64-apple-darwin.tar.gz"
      sha256 "882cc57de4b491ddbd3e39f430cd062a396e7d3fbd088ea5cb452eedd993c113"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.12/code-x86_64-apple-darwin.tar.gz"
      sha256 "8539f5ee14e69cc8afbf96879c73b09a1cf4019ff53befa0705aee8f74df1f63"
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
