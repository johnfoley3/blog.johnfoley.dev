.PHONY: bundle serve clean

clean:
	rm .make.*

serve: bundle
	bundle exec jekyll serve

bundle: .make.bundle

.make.bundle: Gemfile
	bundle install
	touch .make.bundle
