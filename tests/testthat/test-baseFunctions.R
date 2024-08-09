test_that('test hello', {
  r = hello()
  expect_true(r == 'Hello, world!')
})
