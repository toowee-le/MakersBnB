
feature 'view homepage' do
    scenario 'checks user can see homepage' do
        visit '/' 

        expect(page).to have_content("homepage")
    end
end



feature 'viewing listing' do
    scenario 'user can see multiple lisings on MakersBnB' do
        visit '/Spaces' 

        expect(page).to have_content("The Turtle Suite")
        
    end
end

