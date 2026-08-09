class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.171"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.171/code-aarch64-apple-darwin.tar.gz"
      sha256 "6499f6e2ac16a79bbcf1d92ace5eb6b57a9004642b407a83bf601122ce59947c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.171/code-x86_64-apple-darwin.tar.gz"
      sha256 "a84dc919d40865b7ac23dc28757ba21f2007df8561901fc0cb77f7669f4d194b"
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
