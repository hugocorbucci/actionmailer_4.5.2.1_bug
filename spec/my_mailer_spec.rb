require_relative 'spec_helper.rb'

describe MyMailer do
  subject { MyMailer.send(:new) }
  let(:sender) {
    sender = double("Sender")
    allow(sender).to receive(:html).and_return('<p>Email Body</p>')
    sender
  }
  it 'should mail' do
    subject.send_email(sender)
  end
end
