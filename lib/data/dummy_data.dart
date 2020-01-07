import 'package:instacart_ecommerce/model/category.dart';
import 'package:instacart_ecommerce/model/product.dart';

import '../model/location.dart';
import '../model/store.dart';

const DUMMY_LOCATION = const [
  Location(
    location_id: 'L1',
    location_name: 'Location 1',
    storeList: [
      Store(
        store_id: 'S1',
        store_name: 'Store 1',
        categoryList: [
          Category(
            category_id: 'CAT1',
            category_name: 'Category 1',
              productList: [
                Product(
                    product_id: 'P1',
                    product_name: 'Product 1',
                    image_url: 'http://bit.ly/37PhMxt'
                ),
                Product(
                    product_id: 'P3',
                    product_name: 'Product 3',
                    image_url: 'http://bit.ly/2SRHDAu'
                ),
                Product(
                    product_id: 'P5',
                    product_name: 'Product 5',
                    image_url: 'http://bit.ly/2tu9RGX'
                )
              ]
          ),
          Category(
              category_id: 'CAT3',
              category_name: 'Category 3',
              productList: [
                Product(
                    product_id: 'P1',
                    product_name: 'Product 1',
                    image_url: 'http://bit.ly/37PhMxt'
                ),
                Product(
                    product_id: 'P5',
                    product_name: 'Product 5',
                    image_url: 'http://bit.ly/2tu9RGX'
                )
              ]
          ),
          Category(
              category_id: 'CAT4',
              category_name: 'Category 4',
              productList: [
                Product(
                    product_id: 'P2',
                    product_name: 'Product 2',
                    image_url: 'http://bit.ly/2SX7aYQ'
                ),
                Product(
                    product_id: 'P4',
                    product_name: 'Product 4',
                    image_url: 'http://bit.ly/2sGZX4L'
                ),
                Product(
                    product_id: 'P6',
                    product_name: 'Product 6',
                    image_url: 'http://bit.ly/2Qutc3Q'
                )
              ]
          )
        ]
      ),
      Store(
          store_id: 'S2',
          store_name: 'Store 2',
          categoryList: [
            Category(
              category_id: 'CAT4',
              category_name: 'Category 4',
                productList: [
                  Product(
                      product_id: 'P2',
                      product_name: 'Product 2',
                      image_url: 'http://bit.ly/2SX7aYQ'
                  ),
                  Product(
                      product_id: 'P4',
                      product_name: 'Product 4',
                      image_url: 'http://bit.ly/2sGZX4L'
                  ),
                  Product(
                      product_id: 'P6',
                      product_name: 'Product 6',
                      image_url: 'http://bit.ly/2Qutc3Q'
                  )
                ]
            )
          ]
      ),

    ]
  ),
  Location(
    location_id: 'L2',
    location_name: 'Location 2',
    storeList: [
      Store(
        store_id: 'S2',
        store_name: 'Store 2',
          categoryList: [
            Category(
              category_id: 'CAT1',
              category_name: 'Category 1',
              productList: [
                Product(
                    product_id: 'P2',
                    product_name: 'Product 2',
                    image_url: 'http://bit.ly/2SX7aYQ'
                ),
                Product(
                    product_id: 'P4',
                    product_name: 'Product 4',
                    image_url: 'http://bit.ly/2sGZX4L'
                )
              ]
            ),
            Category(
              category_id: 'CAT2',
              category_name: 'Categroy 2',
              productList: [
                Product(
                    product_id: 'P1',
                    product_name: 'Product 1',
                    image_url: 'http://bit.ly/37PhMxt'
                ),
                Product(
                    product_id: 'P4',
                    product_name: 'Product 4',
                    image_url: 'http://bit.ly/2sGZX4L'
                )
              ]
            )
          ]
      ),
      Store(
          store_id: 'S3',
          store_name: 'Store 3',
          categoryList: [
            Category(
              category_id: 'CAT3',
              category_name: 'Category 3',
                productList: [
                  Product(
                      product_id: 'P2',
                      product_name: 'Product 2',
                      image_url: 'http://bit.ly/2SX7aYQ'
                  ),
                  Product(
                      product_id: 'P6',
                      product_name: 'Product 6',
                      image_url: 'http://bit.ly/2Qutc3Q'
                  )
                ]
            )
          ]
      ),

    ]
  )
];

