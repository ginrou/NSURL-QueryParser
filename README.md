NSURL-QueryParser
=================

Simple URL query parser convert to NSDictionary

### Usage

```
NSURL *url = [NSURL URLWithString:@"http://example.com?key=value&foo=bar"];
NSDictionary *query = [url parseQuery]; 

// query = {
//   key = value;
//   foo = var;
// }
```

### License

*MIT*