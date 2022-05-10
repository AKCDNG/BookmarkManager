describe BookmarkList do

  describe '#add' do
    it 'responds to add function' do
    expect(subject).to respond_to(:add).with(1).argument
    end
  end
end