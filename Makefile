# Copyright 2016 Alexandre Terrasa <alexandre@moz-code.org>.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

all:

install-deps:
	apt-get install node
	apt-get install npm
	apt-get install node-express

install:
	npm install

populate:
	nodejs ./loaddb.js csg_cah cards drop
	nodejs ./loaddb.js csg_cah cards data/white_cards.json
	nodejs ./loaddb.js csg_cah cards data/black_cards.json

run:
	npm run
