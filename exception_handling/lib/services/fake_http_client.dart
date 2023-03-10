/// Author [Pulkit Agarwal]
/// Email [pulkit.agw@gmail.com]
/// Created [Mar 10, 2023]
/// Desc [The file holds a class which acts as a server and returns different entities like expected response or exceptions].

/// Class acts as a dummy server and returns a response or an exception.
class FakeHttpClient{

  /// The following method returns a string if everything went well, we can
  /// uncomment the exception to throw one.
  Future<String> getResponseBody() async{
    await Future.delayed(const Duration(milliseconds: 500));

    // Uncomment to throw No Internet Exception.
    // throw const SocketException("No Internet");

    // Uncomment to throw 404 Exception.
    // throw const HttpException("404");

    // Handle invalid json (will throw format exception).
    // return "abcd";

    // Finally returning a json response.
    return "{'responseId' : 101, 'title' : 'Fake Response'}";
  }
}