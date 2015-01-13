
package demo;

import ilkerkonar.com.products.product_query_web_service.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Repository;

@Repository
public class ProductRepository {

	private static Map< Integer, List< Product > >	productCatalog	= new HashMap< Integer, List< Product > >();
	private static List< Product >					machinesList	= new ArrayList< Product >();
	private static List< Product >					clothesList		= new ArrayList< Product >();

	@PostConstruct
	public void initData() {

		final Product p1 = new Product();
		p1.setId( 152 );
		p1.setName( "ütü" );
		p1.setPrice( 45.23d );

		final Product p2 = new Product();
		p2.setId( 56 );
		p2.setName( "çamaşır makinesi" );
		p2.setPrice( 158.78d );

		final Product p3 = new Product();
		p3.setId( 96 );
		p3.setName( "elbise" );
		p3.setPrice( 25.42d );

		machinesList.add( p1 );
		machinesList.add( p2 );
		clothesList.add( p3 );

		productCatalog.put( 1, machinesList );
		productCatalog.put( 2, clothesList );
	}

	public List< Product > findProducts( final int category ) {
		return productCatalog.get( category );
	}
}
