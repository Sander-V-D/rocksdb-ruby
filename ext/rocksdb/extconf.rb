require "mkmf"

dir_config('rocksdb')

if have_header('db.h') and  have_library('rocksdb')
  $CPPFLAGS << "-std=gnu++11"
  create_makefile("RocksDB")
else
  abort "can't find header or library of rocksdb"
end
