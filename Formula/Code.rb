class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.14"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.14/code-aarch64-apple-darwin.tar.gz"
      sha256 "d65ad3457b26e14946c75400eeeb7c0a9ecbb0d2db1c1e490afc338c1da66141"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.14/code-x86_64-apple-darwin.tar.gz"
      sha256 "4016d672c1d9ef81de4744878662421320ae05d50f7f4d227622d82e29b4e493"
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
