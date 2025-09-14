class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.148"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.148/code-aarch64-apple-darwin.tar.gz"
      sha256 "23afd91cd5bc50763d703570f090f14e759a9877a745b5cbf6d9f18cbc89439a"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.148/code-x86_64-apple-darwin.tar.gz"
      sha256 "d53bb3f484135966ae66c5bc7ef63fd34f42ddde9fa9ef4764fc8df2b947f022"
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
