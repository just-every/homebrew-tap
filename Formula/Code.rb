class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.83"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.83/code-aarch64-apple-darwin.tar.gz"
      sha256 "0d004ea92b116c54ae0349225a9091bfc2190f4340fdf4f8a425fcca3c086254"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.83/code-x86_64-apple-darwin.tar.gz"
      sha256 "73fcba6af1f786cc684b92f8337d634d1a1d190947683c992ab86f162fbeffd6"
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
