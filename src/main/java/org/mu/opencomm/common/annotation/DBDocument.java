package org.mu.opencomm.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface DBDocument {

	String collection() default "";
	
	boolean autoIndexId() default true;

	DBCompoundIndex[] compoundIndexes() default {};
	
}
