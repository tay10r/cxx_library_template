#pragma once

class object_b final {
 public:
  void set_value(int value);

  int get_value() const;

 private:
  int value_ = 0;
};
