require 'spec_helper'

describe "Projects" do
  subject { page }

  describe "index" do
    let(:project) { FactoryGirl.create(:project) }
    before(:each) do
     visit users_path
    end

     it { should have_title('Listing projects') }
    it { should have_content('Listing projects') }

    describe "pagination" do

      before(:all) { 30.times { FactoryGirl.create(:project) } }
      after(:all)  { Projects.delete_all }

      it { should have_selector('div.pagination') }

      it "should list each project" do
        User.paginate(page: 1).each do |project|
          expect(page).to have_selector('li', text: project.name)
        end
      end
    end
  end

end