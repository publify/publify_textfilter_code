# Changelog

## 11.0.0 / 2026-10-04

* Depend on `publify_core` 11.0
   * Update text filter to work with the changed text filter plugin system ([#53] by [mvz])
   * Restore inheritance from TextFilterPlugin::MacroPre ([#57] by [mvz])

* Support Ruby 3.2 through 4.0, dropping support for older versions
   * Support Ruby 3.0 and up ([#69] by [mvz])
   * Support Ruby 3.2 through 3.4 ([#121] by [mvz])
   * Test with Ruby 4.0 ([#164] by [mvz])

* Support Rails 7.1 and 7.2
   * Test with all supported Rails versions ([#107] by [mvz])
   * Drop support for Rails 6.1 ([#123] by [mvz])
   * Drop support for Rails 7.0 ([#146] by [mvz])
   * Test with Rails 7.2 ([#163] by [mvz])
   * Make test migrations work in Rails 7.2 ([#166] by [mvz])

* Internal changes
   * Allow starting the GitHub Actions workflow manually ([#86] by [mvz])
   * Switch to weekly dependabot updates ([#120] by [mvz])
   * Update RuboCop configuration and autocorrect new offenses ([#122] by [mvz])
   * Remove scheduled CI runs ([#132] by [mvz])
   * Remove permissions from `GITHUB_TOKEN` in CI ([#154] by [mvz])
   * Loosen development dependencies ([#170] by [mvz])
   * Downgrade rspec-rails ([#172] by [mvz])

[mvz]: https://github.com/mvz

[#53]: https://github.com/publify/publify_textfilter_code/pull/53
[#57]: https://github.com/publify/publify_textfilter_code/pull/57
[#69]: https://github.com/publify/publify_textfilter_code/pull/69
[#86]: https://github.com/publify/publify_textfilter_code/pull/86
[#107]: https://github.com/publify/publify_textfilter_code/pull/107
[#120]: https://github.com/publify/publify_textfilter_code/pull/120
[#121]: https://github.com/publify/publify_textfilter_code/pull/121
[#122]: https://github.com/publify/publify_textfilter_code/pull/122
[#123]: https://github.com/publify/publify_textfilter_code/pull/123
[#132]: https://github.com/publify/publify_textfilter_code/pull/132
[#146]: https://github.com/publify/publify_textfilter_code/pull/146
[#154]: https://github.com/publify/publify_textfilter_code/pull/154
[#163]: https://github.com/publify/publify_textfilter_code/pull/163
[#164]: https://github.com/publify/publify_textfilter_code/pull/164
[#166]: https://github.com/publify/publify_textfilter_code/pull/166
[#170]: https://github.com/publify/publify_textfilter_code/pull/170
[#172]: https://github.com/publify/publify_textfilter_code/pull/172

## 10.0.0 / 2023-06-25

* Support Ruby 2.7, 3.0, 3.1 and 3.2
* Update dependencies
* Depend on `publify_core` 10.0.0

## 9.2.10 / 2023-01-08

* Depend on `publify_core` 9.2.10

## 9.2.9 / 2022-05-22

* Depend on `publify_core` 9.2.9

## 9.2.8 / 2022-05-14

* Depend on `publify_core` 9.2.8

## 9.2.7 / 2022-02-07

* Depend on `publify_core` 9.2.7

## 9.2.6 / 2022-01-07

* Depend on `publify_core` 9.2.6

## 9.2.5 / 2021-10-11

* No changes

## 9.2.4 / 2021-10-02

* Drop support for Ruby 2.4 since it is incompatible with nokogiri 1.12.5
* Depend on `publify_core` 9.2.5

## 9.2.3 / 2021-05-22

* Depend on `publify_core` gem to set Rails dependency

## 9.2.2 / 2021-03-21

* No changes

## 9.2.1 / 2021-03-20

* No changes

## 9.2.0 / 2021-01-17

* Upgrade to Rails 5.2 (mvz)
* Drop support for Ruby 2.2 and 2.3 (mvz)
* Add support for Ruby 2.7 (mvz)
* Depend on `publify_core` 9.2 (mvz)

## 9.1.0 / 2018-04-19

* Depend on `publify_core` 9.1

## 9.0.1

* Depend on released version of `publify_core` (mvz)

## 9.0.0

* No changes

## 9.0.0.pre1

* Initial pre-release of Publify Textfilter Code as a separate gem (mvz)
