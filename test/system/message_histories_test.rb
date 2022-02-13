require "application_system_test_case"

class MessageHistoriesTest < ApplicationSystemTestCase
  setup do
    @message_history = message_histories(:one)
  end

  test "visiting the index" do
    visit message_histories_url
    assert_selector "h1", text: "Message Histories"
  end

  test "creating a Message history" do
    visit message_histories_url
    click_on "New Message History"

    fill_in "Date sent", with: @message_history.date_sent
    fill_in "Message", with: @message_history.message_id
    fill_in "Student", with: @message_history.student_id
    click_on "Create Message history"

    assert_text "Message history was successfully created"
    click_on "Back"
  end

  test "updating a Message history" do
    visit message_histories_url
    click_on "Edit", match: :first

    fill_in "Date sent", with: @message_history.date_sent
    fill_in "Message", with: @message_history.message_id
    fill_in "Student", with: @message_history.student_id
    click_on "Update Message history"

    assert_text "Message history was successfully updated"
    click_on "Back"
  end

  test "destroying a Message history" do
    visit message_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Message history was successfully destroyed"
  end
end
