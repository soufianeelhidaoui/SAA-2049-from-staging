$(document).ready(function () {
    let index = 0;
  
    // Function to generate a message
    function generateMessage(msg, type) {
      index++;
      const messageContainer = `
              <div id='cm-msg-${index}' class="chat-msg ${type}">
                  <span class="msg-avatar">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/></svg>
                  </span>
                  <div class="cm-msg-text">
                  ${msg}
                  </div>
              </div>
          `;
  
      $(".chat-logs").append(messageContainer);
      $(`#cm-msg-${index}`).hide().fadeIn(300);
  
      if (type === "self") {
        $("#chat-input").val(""); // val is a jQuery function to set the value of an input element
      }
  
      $(".chat-logs")
        .stop()
        .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
    }
  
    // Function to generate a message with buttons
    function generateButtonMessage(msg) {
      index++;
  
  
  
      const messageContainer = `
              <div id='cm-msg-${index}' class="chat-msg user">
                  <span class="msg-avatar">
                      <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 640 512"><path d="M320 0c17.7 0 32 14.3 32 32V96H472c39.8 0 72 32.2 72 72V440c0 39.8-32.2 72-72 72H168c-39.8 0-72-32.2-72-72V168c0-39.8 32.2-72 72-72H288V32c0-17.7 14.3-32 32-32zM208 384c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H208zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H304zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H400zM264 256a40 40 0 1 0 -80 0 40 40 0 1 0 80 0zm152 40a40 40 0 1 0 0-80 40 40 0 1 0 0 80zM48 224H64V416H48c-26.5 0-48-21.5-48-48V272c0-26.5 21.5-48 48-48zm544 0c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H576V224h16z"/></svg>
                  </span>
                  <div class="cm-msg-text">
                      ${msg}
                  </div>
              </div>
          `;
  
      $(".chat-logs").append(messageContainer);
      $(`#cm-msg-${index}`).hide().fadeIn(300);
      $(".chat-logs")
        .stop()
        .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
      $("#chat-input").attr("disabled", false);
    }
  
    // Handle clicking on a button
    $(document).on("click", ".chat-btn", function () {
      let name = $(this).html();
      $("#chat-input").attr("disabled", false);
      generateMessage(name, "self");
      
    });
  
    // Handle the send button click
    $("#chat-submit").click(function (e) {
      e.preventDefault();
      let msg = $("#chat-input").val().trim();
      if (msg === "") {
        return false;
      }
      generateMessage(msg, "self");
  
      // Simulate a response after a delay
      setTimeout(function () {
        const responseMsg = "This is a response from the chat bot.";
        generateButtonMessage(responseMsg);
      }, 1000);
    });
  
    // Toggle chat box visibility
    $("#chat-circle, .chat-box-toggle").click(function () {
      $("#chat-circle, .chat-box").toggle("scale");
    });
  });
  