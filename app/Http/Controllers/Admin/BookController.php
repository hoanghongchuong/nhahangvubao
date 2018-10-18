<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Book;

class BookController extends Controller
{
	public function __construct(Book $book)
	{
		$this->Book = $book;
	}
    public function index()
    {
    	$data = $this->Book->orderBy('id','desc')->get();
    	return view('admin.book.index', compact('data'));
    }

    public function getEdit($id)
    {
    	$data = $this->Book->findOrFail($id);
    	return view('admin.book.edit', compact('data'));
    }

    public function postEdit(Request $req, $id)
    {
    
    	$allReq = $req->only($this->Book->getFieldList());
    	
    	$this->Book->where('id', $id)->update($allReq);
    	return redirect()->back()->with('status', 'Sửa thành công');
    }

    public function delete($id)
    {
    	$data= $this->Book->findOrFail($id);
    	$data->delete();
    	return redirect()->back()->with('status','Xóa thành công');
    }
}
