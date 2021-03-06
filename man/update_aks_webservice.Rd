% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/webservice-aks.R
\name{update_aks_webservice}
\alias{update_aks_webservice}
\title{Update a deployed AKS web service}
\usage{
update_aks_webservice(webservice, autoscale_enabled = NULL,
  autoscale_min_replicas = NULL, autoscale_max_replicas = NULL,
  autoscale_refresh_seconds = NULL,
  autoscale_target_utilization = NULL, auth_enabled = NULL,
  cpu_cores = NULL, memory_gb = NULL, enable_app_insights = NULL,
  scoring_timeout_ms = NULL, replica_max_concurrent_requests = NULL,
  max_request_wait_time = NULL, num_replicas = NULL, tags = NULL,
  properties = NULL, description = NULL, models = NULL,
  inference_config = NULL, gpu_cores = NULL, period_seconds = NULL,
  initial_delay_seconds = NULL, timeout_seconds = NULL,
  success_threshold = NULL, failure_threshold = NULL,
  namespace = NULL, token_auth_enabled = NULL)
}
\arguments{
\item{webservice}{The \code{AksWebservice} object.}

\item{autoscale_enabled}{If \code{TRUE} enable autoscaling for the web service.}

\item{autoscale_min_replicas}{An int of the minimum number of containers
to use when autoscaling the web service.}

\item{autoscale_max_replicas}{An int of the maximum number of containers
to use when autoscaling the web service.}

\item{autoscale_refresh_seconds}{An int of how often in seconds the autoscaler
should attempt to scale the web service.}

\item{autoscale_target_utilization}{An int of the target utilization
(in percent out of 100) the autoscaler should attempt to maintain for the
web service.}

\item{auth_enabled}{If \code{TRUE} enable key-based authentication for the
web service. Defaults to \code{TRUE}.}

\item{cpu_cores}{The number of cpu cores to allocate for
the web service. Can be a decimal. Defaults to \code{0.1}.}

\item{memory_gb}{The amount of memory (in GB) to allocate for
the web service. Can be a decimal. Defaults to \code{0.5}.}

\item{enable_app_insights}{If \code{TRUE} enable AppInsights for the web service.
Defaults to \code{FALSE}.}

\item{scoring_timeout_ms}{An int of the timeout (in milliseconds) to enforce for
scoring calls to the web service.}

\item{replica_max_concurrent_requests}{An int of the number of maximum concurrent
requests per node to allow for the web service.}

\item{max_request_wait_time}{An int of the maximum amount of time a request
will stay in the queue (in milliseconds) before returning a 503 error.}

\item{num_replicas}{An int of the number of containers to allocate for the
web service. If this parameter is not set then the autoscaler is enabled by
default.}

\item{tags}{A named list of key-value tags for the web service,
e.g. \code{list("key" = "value")}. Will replace existing tags.}

\item{properties}{A named list of key-value properties to add for the web
service, e.g. \code{list("key" = "value")}.}

\item{description}{A string of the description to give the web service.}

\item{models}{A list of \code{Model} objects to package into the updated service.}

\item{inference_config}{An \code{InferenceConfig} object.}

\item{gpu_cores}{An int of the number of gpu cores to allocate for the
web service.}

\item{period_seconds}{An int of how often in seconds to perform the
liveness probe. Minimum value is \code{1}.}

\item{initial_delay_seconds}{An int of the number of seconds after
the container has started before liveness probes are initiated.}

\item{timeout_seconds}{An int of the number of seconds after which the
liveness probe times out. Minimum value is \code{1}.}

\item{success_threshold}{An int of the minimum consecutive successes
for the liveness probe to be considered successful after having failed.
Minimum value is \code{1}.}

\item{failure_threshold}{An int of the number of times Kubernetes will try
the liveness probe when a Pod starts and the probe fails, before giving up.
Minimum value is \code{1}.}

\item{namespace}{A string of the Kubernetes namespace in which to deploy the
web service: up to 63 lowercase alphanumeric ('a'-'z', '0'-'9') and
hyphen ('-') characters. The first last characters cannot be hyphens.}

\item{token_auth_enabled}{If \code{TRUE}, enable token-based authentication for
the web service. If enabled, users can access the web service by fetching
an access token using their Azure Active Directory credentials.
Both \code{token_auth_enabled} and \code{auth_enabled} cannot be set to \code{TRUE}.}
}
\value{
None
}
\description{
Update an AKS web service with the provided properties. You can update the
web service to use a new model, a new entry script, or new dependencies
that can be specified in an inference configuration.

Values left as \code{NULL} will remain unchanged in the web service.
}
