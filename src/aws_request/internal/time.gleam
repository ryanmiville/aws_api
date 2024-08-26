import gleam/option

pub opaque type Time {
  Time(wall_time: Int, monotonic_time: option.Option(Int))
}

pub type Date {
  Date(year: Int, month: Int, day: Int)
}

pub type DayTime {
  DayTime(hour: Int, minute: Int, second: Int, millisecond: Int)
}

pub fn to_parts(value: Time) -> #(#(Int, Int, Int), #(Int, Int, Int)) {
  let #(#(year, month, day), #(hour, minute, second, _)) = do_to_parts(value)
  #(#(year, month, day), #(hour, minute, second))
}

fn do_to_parts(value: Time) -> #(#(Int, Int, Int), #(Int, Int, Int, Int)) {
  case value {
    Time(wall_time: t, monotonic_time: _) -> {
      let #(date, time) = ffi_to_parts(t, 0)
      #(date, time)
    }
  }
}

pub fn utc_now() -> Time {
  let now = ffi_now()
  let monotonic_now = ffi_monotonic_now()
  Time(now, option.Some(monotonic_now))
}

@external(erlang, "time_ffi", "now")
@external(javascript, "./time_ffi.mjs", "now")
fn ffi_now() -> Int

@external(erlang, "time_ffi", "monotonic_now")
@external(javascript, "./time_ffi.mjs", "monotonic_now")
fn ffi_monotonic_now() -> Int

@external(erlang, "time_ffi", "to_parts")
@external(javascript, "./time_ffi.mjs", "to_parts")
fn ffi_to_parts(a: Int, b: Int) -> #(#(Int, Int, Int), #(Int, Int, Int, Int))
