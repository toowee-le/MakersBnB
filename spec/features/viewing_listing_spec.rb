feature 'viewing listing' do
    scenario 'user can see multiple lisings on MakersBnB' do
        visit '/Spaces' 

        expect(page).to have_content("the turtle suite")
        expect(page).to have_content("the most dreamiest beach house with
            Sea views")
    end
end

