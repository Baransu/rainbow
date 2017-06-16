install:
	mix deps.get
	cd client && yarn

build:
	cd client && yarn build && cd ../
	mv client/build priv/static

start:
	mix phx.server
