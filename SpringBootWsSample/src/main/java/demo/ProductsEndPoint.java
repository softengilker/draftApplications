
package demo;

import ilkerkonar.com.products.product_query_web_service.GetProductsRequest;
import ilkerkonar.com.products.product_query_web_service.GetProductsResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@Endpoint
public class ProductsEndPoint {

	private static final String		NAMESPACE_URI	= "http://com.ilkerkonar/products/product-query-web-service";

	private final ProductRepository	productRepository;

	@Autowired
	public ProductsEndPoint( final ProductRepository productRepository ) {
		this.productRepository = productRepository;
	}

	@PayloadRoot( namespace = NAMESPACE_URI, localPart = "getProductsRequest" )
	@ResponsePayload
	public GetProductsResponse getProduct( @RequestPayload final GetProductsRequest request ) {
		final GetProductsResponse response = new GetProductsResponse();

		response.getProduct().addAll( productRepository.findProducts( request.getProductType() ) );

		return response;
	}
}
