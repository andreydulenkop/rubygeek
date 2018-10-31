require "./mailbox"

class MailboxHtmlFormatter < Mailbox

      def initialize(mails)
          @mails = mails
      end

      def format

      table_head = []
        @@header.each_key { |head| table_head  << head.to_s.capitalize  }
        table_head.map! { |head| "<th> #{head} </th>" }

      html = <<-HTML
      <html>
          <head>
            <style>
              table {
                border-collapse: collapse;
              }
              td, th {
                border: 1px solid black;
                padding: 1em;
              }
            </style>
          </head>
            <body>
              <h1>#{@@name}</h1>
              <table>
                <thead>
                  <tr>
                   #{table_head.join("\n                    ")}
                    <th>Subject</th>
                  </tr>
                </thead>
                HTML

        html_end = <<-HTML
                </table>
            </body>
      </html>
  HTML

      puts html
      @mails.result_html
      puts html_end

      end
end