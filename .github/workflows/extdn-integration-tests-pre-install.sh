#!/bin/bash
composer config minimum-stability dev
composer config prefer-stable false

composer require yireo/magento2-integration-test-helper --no-update

composer require yireo/magento2-replace-bundled:^4.0 --no-update
composer require yireo/magento2-replace-inventory:^4.0 --no-update
composer require yireo/magento2-replace-pagebuilder:^4.0 --no-update

mkdir -p app/etc/
echo '<?php return "./vendor";'; > app/etc/vendor_path.php
