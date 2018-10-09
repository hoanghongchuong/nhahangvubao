<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiController extends Controller
{
	const TOKEN = '534aDa7CeF733C7B77E1E4d263D639C1318Fe161';
    public function index()
    {
    	
    	$curl = curl_init('https://services.giaohangtietkiem.vn/authentication-request-sample');

		curl_setopt_array($curl, array(
		    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		    CURLOPT_RETURNTRANSFER => true,
		    CURLOPT_HTTPHEADER => array(
		        "Token: static::TOKEN",
		    ),
		));

		$response = curl_exec($curl);
		curl_close($curl);

		echo 'Response: ' . $response;
    }
}
