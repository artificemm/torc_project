RSpec.describe TorcProject::InputManager do
  let(:file) { TorcProject::InputManager.new('spec/test_input.txt') }
  it 'receives an input file' do
    expect(file).to be_an_instance_of(TorcProject::InputManager)
    expect(file.basic_tax).to include('')
  end
end
