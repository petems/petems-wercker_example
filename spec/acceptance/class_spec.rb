require 'spec_helper_acceptance'

describe 'wercker_example class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'wercker_example': }
      EOS

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    it 'should allow shell commands' do
      pp = <<-EOS
      class { 'wercker_example': }
      EOS

      apply_manifest(pp, :expect_failures => false) do |r|
        expect(r.stdout).to match(/Hello world/)
      end

      shell("echo 'Hello World' | grep 'Hello World'")
    end
  end
end
