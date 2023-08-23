public class CollectionDemo {
    public static void method(){
        List<String> myList = new List<String>{'Apple', 'Banana', 'Orange'};
		String listAsString = myList.toString();

		System.debug(listAsString); // Outputs: (Apple, Banana, Orange)

    }
}