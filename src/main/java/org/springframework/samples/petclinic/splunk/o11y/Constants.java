package org.springframework.samples.petclinic.splunk.o11y;

public interface Constants {

	public static final String METRIC_PREFIX = "custom.metric.";

	public static final String NUMBER_OF_EXEC_NAME = METRIC_PREFIX + "number.of.exec";

	public static final String NUMBER_OF_EXEC_DESCRIPTION = "Count the number of executions.";

}
