FactoryGirl.define do
  factory :event do
    name        'Test Event'
    from_date   Date.parse('2015/7/10')
    from_time   Time.parse('2015/7/10 10:00AM')
    to_date     Date.parse('2015/7/10')
    to_time     Time.parse('2015/7/10 2:00PM')
    time_zone   'UTC'
    repeats     'never'
    calendar

    factory :event_daily_repeat do
      repeats               'daily'
      repeats_every_n_days  1
      repeat_ends           'on'
      repeat_ends_on        Date.parse('2015/7/10') + 2.days
    end

    factory :event_weekly_repeat do
      repeats                               'weekly'
      repeats_every_n_weeks                 1
      repeats_weekly_each_days_of_the_week  ['sunday', 'monday']
      repeat_ends                           'on'
      repeat_ends_on                        Date.parse('2015/7/10') + 2.weeks
    end
  end
end
