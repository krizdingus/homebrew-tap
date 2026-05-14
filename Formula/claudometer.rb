class Claudometer < Formula
  desc "Claude usage monitor that drives a Cheap Yellow Display"
  homepage "https://github.com/krizdingus/claudometer"
  url "https://github.com/krizdingus/claudometer.git",
      branch: "main"
  version "0.1.1"
  license "MIT"
  head "https://github.com/krizdingus/claudometer.git", branch: "main"

  depends_on "go" => :build
  depends_on "esptool"

  def install
    cd "daemon" do
      system "go", "build", *std_go_args(output: bin/"claudometer"), "./cmd/claudometer"
    end
  end

  service do
    run [opt_bin/"claudometer"]
    keep_alive true
    log_path var/"log/claudometer.log"
    error_log_path var/"log/claudometer.err.log"
  end

  test do
    assert_match "claudometer", shell_output("#{bin}/claudometer version 2>&1", 0).strip
  end
end
