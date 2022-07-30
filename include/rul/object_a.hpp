#pragma once

class object_a final {
 public:
  object_a() {}

  void set_value(int value) { value_ = value; }

  int get_value() const { return value_; }

 private:
  int value_ = 0;
};
