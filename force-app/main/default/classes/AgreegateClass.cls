public class AgreegateClass {
    public static void aggMethod(){
           List<AggregateResult> oppList = [SELECT count(id), min(amount), sum(amount), max(amount), avg(amount) FROM Opportunity];
                for(AggregateResult ar : oppList) {
            System.debug('Count is : '+ar.get('expr0'));
            System.debug('Sum Amount is : '+ar.get('expr1'));
            System.debug('Min Amount is : '+ar.get('expr2'));
            System.debug('Max Amount is : '+ar.get('expr3'));
            System.debug('Avg Amount is : '+ar.get('expr4'));
	}
       System.debug('--------------------------------------------------------');        
          List<AggregateResult> aggResult = [SELECT count(id) countOfOpp, min(amount) minAmount, sum(amount) sumAmount, max(amount) maxAmount, avg(amount) avgAmount FROM Opportunity];
		        for(AggregateResult ar : aggResult) {
            System.debug('Count is : '+ar.get('countOfOpp'));
            System.debug('Min is : '+ar.get('minAmount'));
            System.debug('sum is : '+ar.get('sumAmount'));
            System.debug('max is : '+ar.get('maxAmount'));
            System.debug('avg is : '+ar.get('avgAmount'));
        }

    }
}