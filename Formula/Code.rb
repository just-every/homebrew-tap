class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.68"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.68/code-aarch64-apple-darwin.tar.gz"
      sha256 "b037652c2821353b91f478595a95ae638238f934d0c88b89d60768f102516f00"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.68/code-x86_64-apple-darwin.tar.gz"
      sha256 "10f7dc7e52654f528df0ec458f0ab195c2247d8ef2b1f3cc136425308cd0effc"
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
