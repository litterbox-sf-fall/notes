## Testing with rspec

### What is rspec?

### How does it work?

### How to get started

1. rspec --init (this will create a .rspec and spec/spec_helper.rb file)
2. Inside your .rspec file make sure you have this text
```
--color
--require spec_helper
--format documentation
```

### Rspec matchers

Fortunately, the syntax is very similar to our previous testing matchers in node, here are just a few matchers, that should look similar to mocha/chai.

```
expect(actual).to be ___
expect(actual).to be_between(minimum, maximum).inclusive
expect(actual).to match(/expression/) # We will learn about this very soon!
expect(actual).to be true      # passes if actual == true
expect(actual).to be false     # passes if actual == false
expect(actual).to be_nil       # passes if actual is nil
expect(actual).to exist        # passes if actual.exist? and/or actual.exists? are truthy
```

The rspec documentation is a great place to find more of these - you can find them [here](https://www.relishapp.com/rspec/rspec-expectations/v/3-1/docs/built-in-matchers)

### Writing your first test

Start with a describe block, and inside an it statement as well

```
require 'spec_helper'

describe "Some idea, variable or method" do
    it "is something or does something" do
        # expect...
    end
end 
```

Let's start with some very simple tests 

```
describe "Startin" do
  describe "something" do
    it "does something that passes" do
      expect(5).to eq(5)
    end

    it "does something that fails" do
      expect(5).to eq(3)
    end

    it "does something that is pending", :pending => true do
      expect(5).to be < 3
    end

    it "does something that is skipped", :skip => true do
      expect(5).to be < 3
    end
  end
```
### Testing iterators

```
```

### Testing classes (what will be model testing)

```
```