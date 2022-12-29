<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);


// PROFILE CONTROLLER
$routes->get('/', 'ProfileController::index');
$routes->get('/about', 'ProfileController::about');
$routes->post('/search', 'ProfileController::search');
$routes->get('/homepage', 'ProfileController::getAll');
$routes->get('/contact', 'ProfileController::contact');
$routes->get('/testingData', 'ProfileController::testingData');
$routes->get('/destination', 'ProfileController::destination');
$routes->get('/traveladvisory', 'ProfileController::traveladvisory');
$routes->get('/rate', 'ProfileController::rate');
$routes->get('/profile', 'ProfileController::index',['filter' => 'authGuard']);



// SIGNIN CONTROLLER
$routes->get('/signin', 'SigninController::index');
$routes->get('/signin', 'SigninController::admin');

// $routes->get('/signinadmin', 'SigninController::index');
$routes->get('/logout', 'SigninController::logout');
$routes->get('/changepass', 'SigninController::changepass');
$routes->get('/forgetpass', 'SigninController::forgetpass');
$routes->get('/passwordreset/(:any)', 'SigninController::passwordreset/$1');
$routes->match(['get','post'],'user_account', 'SigninController::user_account',['filter' => 'authGuard']);

//SIGNUP CONTROLLER
$routes->get('/', 'SignupController::email');
$routes->get('/signup', 'SignupController::signup');
$routes->get('/verify/(:any)', 'SignupController::verify/$1');


// DESTINATION CONTROLLER
// $routes->get('/desti', 'DestinationController::destination');
$routes->get('/moreplaces', 'DestinationController::moreplaces');
$routes->get('/test1/(:any)', 'DestinationController::test1/$1');
$routes->post('/actionSave', 'DestinationController::actionSave');
$routes->get('/update/(:any)', 'DestinationController::update/$1');
// $routes->get('/test_modal', 'DestinationController::test_modal');
$routes->post('/actionInsert', 'DestinationController::actionInsert');
$routes->post('page/fileUpload', 'DestinationController::fileUpload');
// $routes->get('/destination_details', 'DestinationController::hidden');
// $routes->get('/destination_list', 'DestinationController::destination_list');
$routes->get('/desti', 'DestinationController::insert_destination');
// $routes->get('/destination_details', 'DestinationController::destination_details');
// $routes->get('/destination_page', 'DestinationController::mo r',['filter' => 'authGuard']);


// HOTEL CONTROLLER
$routes->get('/hotels', 'HotelsController::hotels');
$routes->get('/compare', 'HotelsController::compare');
// $routes->get('accadd', 'HotelsController::Insertact');
// $routes->get('/hotel_page', 'HotelsController::hotcal');
$routes->get('/hotel_page', 'HotelsController::hotels');
$routes->get('/compare', 'HotelsController::hotcompare');
// $routes->get('accInsert', 'HotelsController::accInsert');
$routes->get('/test2/(:any)', 'HotelsController::test2/$1');
// $routes->get('/hotel_list', 'HotelsController::hotel_list');
// $routes->get('/insert_accomodation', 'HotelsController::insert_accomodation');


// PASALUBONG CONTROLLER
// $routes->get('pasa', 'PasalubongController::Insertpas');
// $routes->get('pasa', 'PasalubongController::pasInsert');
$routes->get('/passan', 'PasalubongController::pascal');
$routes->get('/test4/(:any)', 'PasalubongController::test4/$1');
$routes->get('/pasalubongcenter', 'PasalubongController::pasalubong');
// $routes->get('/pasalubong_list', 'PasalubongController::pasalubong_list');
// $routes->get('/insert_pasalubong', 'PasalubongController::insert_pasalubong ');


// RESTAURANT CONTROLLER
// $routes->get('res', 'RestaurantController::Insertres');
// $routes->get('res', 'RestaurantController::resInsert');
$routes->get('/test3/(:any)', 'RestaurantController::test3/$1');
$routes->get('/restaurant_page', 'RestaurantController::rescal');
$routes->get('/restaurants', 'RestaurantController::restaurants');
// $routes->get('/restaurant_list', 'RestaurantController::restaurant_list');
// $routes->get('/insert_restaurant', 'RestaurantController::insert_restaurant');


// DROPZONE CONTROLLER
$routes->get("image-upload", "DropzoneController::dropzone");
$routes->post("dropzone/upload", "DropzoneController::dropzoneStore");
$routes->post('/tag_insert', 'DropzoneController::tag_insert');

// ADMIN CONTROLLER
$routes->get('/admin', 'AdminController::admin');
$routes->get('/rates', 'AdminController::rates');
$routes->get('/users_list', 'AdminController::users_list');
$routes->get('/hotel_list', 'AdminController::hotel_list');
// $routes->get('/tagging_place', 'AdminController::tagging_place');
$routes->get('/destination_list', 'AdminController::destination_list');
$routes->get('/pasalubong_list', 'AdminController::pasalubong_list');
$routes->get('/restaurant_list', 'AdminController::restaurant_list');
$routes->get('/review_rating', 'AdminController::review_rating');
$routes->get('/adding_place', 'AdminController::adding_place');
$routes->match(['get','post'],'admin_account', 'AdminController::admin_account',['filter' => 'authGuard']);




//Tagging place
$routes->get('/tagging_place', 'TagPlaceController::tagging_place');
$routes->get('/tagging_image', 'TagPlaceController::tagging_image');
$routes->get('/tag_insert', 'TagPlaceController::tag_insert');

$routes->get('/category', 'CatController::category');



$routes->get('/product_page', 'ProductController::product_page');
$routes->get('/product_page', 'ProductController::productbaco');
$routes->get('/product_page', 'ProductController::productcalapan');

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */


// We get a performance increase by specifying the default
// route since we don't have to scan directories.





/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
