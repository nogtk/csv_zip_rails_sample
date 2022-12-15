require 'csv'
require 'zip'

module Api
  module Accounts
    class CsvsController < ApplicationController
      def show
        Zip::File.open(zip_file_location, Zip::File::CREATE) do |zip|
          zip.get_output_stream('result/account.csv') do |f|
            f.puts(csv_string)
          end
        end

        send_data(
          File.read(zip_file_location),
          filename: 'account.zip',
          type: 'application/zip',
        )

        File.delete(zip_file_location)
      end

      private

      def csv_string
        @csv_string ||=
          CSV.generate do |csv|
            header = %w(id name birthday)
            csv << header

            [
              Account.new(1, 'test', '1996/1/1'),
              Account.new(2, 'fuga', '1997/1/1'),
              Account.new(3, 'hoge', '1998/1/1')
            ].each { |a| csv << a.to_csv_format }
          end
      end

      def zip_file_location
        "#{Rails.root}/tmp/account.zip"
      end
    end
  end
end
  