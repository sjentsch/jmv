
# This file is automatically generated, you probably don't want to edit this

ancovaOptions <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "ancovaOptions",
    inherit = jmvcore::Options,
    public = list(
        initialize = function(
            dep = NULL,
            factors = NULL,
            covs = NULL,
            effectSize = NULL,
            modelTest = FALSE,
            modelTerms = NULL,
            ss = "3",
            homo = FALSE,
            norm = FALSE,
            qq = FALSE,
            contrasts = NULL,
            postHoc = NULL,
            postHocCorr = list(
                "tukey"),
            postHocES = list(),
            postHocEsCi = FALSE,
            postHocEsCiWidth = 95,
            emMeans = list(
                list()),
            emmPlots = TRUE,
            emmPlotData = FALSE,
            emmPlotError = "ci",
            emmTables = FALSE,
            emmWeights = TRUE,
            ciWidthEmm = 95, ...) {

            super$initialize(
                package="jmv",
                name="ancova",
                requiresData=TRUE,
                ...)

            private$..dep <- jmvcore::OptionVariable$new(
                "dep",
                dep,
                required=TRUE,
                suggested=list(
                    "continuous"),
                permitted=list(
                    "numeric"))
            private$..factors <- jmvcore::OptionVariables$new(
                "factors",
                factors,
                rejectUnusedLevels=TRUE,
                suggested=list(
                    "nominal",
                    "ordinal"),
                permitted=list(
                    "factor"),
                default=NULL)
            private$..covs <- jmvcore::OptionVariables$new(
                "covs",
                covs,
                suggested=list(
                    "continuous",
                    "ordinal"),
                permitted=list(
                    "numeric"),
                default=NULL)
            private$..effectSize <- jmvcore::OptionNMXList$new(
                "effectSize",
                effectSize,
                options=list(
                    "eta",
                    "partEta",
                    "omega"),
                default=NULL)
            private$..modelTest <- jmvcore::OptionBool$new(
                "modelTest",
                modelTest,
                default=FALSE)
            private$..modelTerms <- jmvcore::OptionTerms$new(
                "modelTerms",
                modelTerms,
                default=NULL)
            private$..ss <- jmvcore::OptionList$new(
                "ss",
                ss,
                options=list(
                    "1",
                    "2",
                    "3"),
                default="3")
            private$..homo <- jmvcore::OptionBool$new(
                "homo",
                homo,
                default=FALSE)
            private$..norm <- jmvcore::OptionBool$new(
                "norm",
                norm,
                default=FALSE)
            private$..qq <- jmvcore::OptionBool$new(
                "qq",
                qq,
                default=FALSE)
            private$..contrasts <- jmvcore::OptionArray$new(
                "contrasts",
                contrasts,
                items="(factors)",
                default=NULL,
                template=jmvcore::OptionGroup$new(
                    "contrasts",
                    NULL,
                    elements=list(
                        jmvcore::OptionVariable$new(
                            "var",
                            NULL,
                            content="$key"),
                        jmvcore::OptionList$new(
                            "type",
                            NULL,
                            options=list(
                                "none",
                                "deviation",
                                "simple",
                                "difference",
                                "helmert",
                                "repeated",
                                "polynomial")))))
            private$..postHoc <- jmvcore::OptionTerms$new(
                "postHoc",
                postHoc,
                default=NULL)
            private$..postHocCorr <- jmvcore::OptionNMXList$new(
                "postHocCorr",
                postHocCorr,
                options=list(
                    "none",
                    "tukey",
                    "scheffe",
                    "bonf",
                    "holm"),
                default=list(
                    "tukey"))
            private$..postHocES <- jmvcore::OptionNMXList$new(
                "postHocES",
                postHocES,
                options=list(
                    "d"),
                default=list())
            private$..postHocEsCi <- jmvcore::OptionBool$new(
                "postHocEsCi",
                postHocEsCi,
                default=FALSE)
            private$..postHocEsCiWidth <- jmvcore::OptionNumber$new(
                "postHocEsCiWidth",
                postHocEsCiWidth,
                min=50,
                max=99.9,
                default=95)
            private$..emMeans <- jmvcore::OptionArray$new(
                "emMeans",
                emMeans,
                default=list(
                    list()),
                template=jmvcore::OptionVariables$new(
                    "emMeans",
                    NULL))
            private$..emmPlots <- jmvcore::OptionBool$new(
                "emmPlots",
                emmPlots,
                default=TRUE)
            private$..emmPlotData <- jmvcore::OptionBool$new(
                "emmPlotData",
                emmPlotData,
                default=FALSE)
            private$..emmPlotError <- jmvcore::OptionList$new(
                "emmPlotError",
                emmPlotError,
                options=list(
                    "none",
                    "ci",
                    "se"),
                default="ci")
            private$..emmTables <- jmvcore::OptionBool$new(
                "emmTables",
                emmTables,
                default=FALSE)
            private$..emmWeights <- jmvcore::OptionBool$new(
                "emmWeights",
                emmWeights,
                default=TRUE)
            private$..ciWidthEmm <- jmvcore::OptionNumber$new(
                "ciWidthEmm",
                ciWidthEmm,
                min=50,
                max=99.9,
                default=95)
            private$..residsOV <- jmvcore::OptionOutput$new(
                "residsOV")

            self$.addOption(private$..dep)
            self$.addOption(private$..factors)
            self$.addOption(private$..covs)
            self$.addOption(private$..effectSize)
            self$.addOption(private$..modelTest)
            self$.addOption(private$..modelTerms)
            self$.addOption(private$..ss)
            self$.addOption(private$..homo)
            self$.addOption(private$..norm)
            self$.addOption(private$..qq)
            self$.addOption(private$..contrasts)
            self$.addOption(private$..postHoc)
            self$.addOption(private$..postHocCorr)
            self$.addOption(private$..postHocES)
            self$.addOption(private$..postHocEsCi)
            self$.addOption(private$..postHocEsCiWidth)
            self$.addOption(private$..emMeans)
            self$.addOption(private$..emmPlots)
            self$.addOption(private$..emmPlotData)
            self$.addOption(private$..emmPlotError)
            self$.addOption(private$..emmTables)
            self$.addOption(private$..emmWeights)
            self$.addOption(private$..ciWidthEmm)
            self$.addOption(private$..residsOV)
        }),
    active = list(
        dep = function() private$..dep$value,
        factors = function() private$..factors$value,
        covs = function() private$..covs$value,
        effectSize = function() private$..effectSize$value,
        modelTest = function() private$..modelTest$value,
        modelTerms = function() private$..modelTerms$value,
        ss = function() private$..ss$value,
        homo = function() private$..homo$value,
        norm = function() private$..norm$value,
        qq = function() private$..qq$value,
        contrasts = function() private$..contrasts$value,
        postHoc = function() private$..postHoc$value,
        postHocCorr = function() private$..postHocCorr$value,
        postHocES = function() private$..postHocES$value,
        postHocEsCi = function() private$..postHocEsCi$value,
        postHocEsCiWidth = function() private$..postHocEsCiWidth$value,
        emMeans = function() private$..emMeans$value,
        emmPlots = function() private$..emmPlots$value,
        emmPlotData = function() private$..emmPlotData$value,
        emmPlotError = function() private$..emmPlotError$value,
        emmTables = function() private$..emmTables$value,
        emmWeights = function() private$..emmWeights$value,
        ciWidthEmm = function() private$..ciWidthEmm$value,
        residsOV = function() private$..residsOV$value),
    private = list(
        ..dep = NA,
        ..factors = NA,
        ..covs = NA,
        ..effectSize = NA,
        ..modelTest = NA,
        ..modelTerms = NA,
        ..ss = NA,
        ..homo = NA,
        ..norm = NA,
        ..qq = NA,
        ..contrasts = NA,
        ..postHoc = NA,
        ..postHocCorr = NA,
        ..postHocES = NA,
        ..postHocEsCi = NA,
        ..postHocEsCiWidth = NA,
        ..emMeans = NA,
        ..emmPlots = NA,
        ..emmPlotData = NA,
        ..emmPlotError = NA,
        ..emmTables = NA,
        ..emmWeights = NA,
        ..ciWidthEmm = NA,
        ..residsOV = NA)
)

ancovaResults <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "ancovaResults",
    inherit = jmvcore::Group,
    active = list(
        main = function() private$.items[["main"]],
        model = function() private$..model,
        assump = function() private$.items[["assump"]],
        contrasts = function() private$.items[["contrasts"]],
        postHoc = function() private$.items[["postHoc"]],
        emm = function() private$.items[["emm"]],
        residsOV = function() private$.items[["residsOV"]]),
    private = list(
        ..model = NA),
    public=list(
        initialize=function(options) {
            super$initialize(
                options=options,
                name="",
                title="ANCOVA")
            self$add(jmvcore::Table$new(
                options=options,
                name="main",
                title="`ANCOVA - ${dep}`",
                clearWith=list(
                    "dep",
                    "factors",
                    "covs",
                    "modelTerms",
                    "ss"),
                columns=list(
                    list(
                        `name`="name", 
                        `title`="", 
                        `type`="text"),
                    list(
                        `name`="ss", 
                        `title`="Sum of Squares", 
                        `type`="number"),
                    list(
                        `name`="df", 
                        `title`="df", 
                        `type`="integer"),
                    list(
                        `name`="ms", 
                        `title`="Mean Square", 
                        `type`="number"),
                    list(
                        `name`="F", 
                        `title`="F", 
                        `type`="number"),
                    list(
                        `name`="p", 
                        `title`="p", 
                        `type`="number", 
                        `format`="zto,pvalue"),
                    list(
                        `name`="etaSq", 
                        `title`="\u03B7\u00B2", 
                        `type`="number", 
                        `visible`="(effectSize:eta)", 
                        `format`="zto"),
                    list(
                        `name`="etaSqP", 
                        `title`="\u03B7\u00B2p", 
                        `type`="number", 
                        `visible`="(effectSize:partEta)", 
                        `format`="zto"),
                    list(
                        `name`="omegaSq", 
                        `title`="\u03C9\u00B2", 
                        `type`="number", 
                        `visible`="(effectSize:omega)", 
                        `format`="zto"))))
            private$..model <- NULL
            self$add(R6::R6Class(
                inherit = jmvcore::Group,
                active = list(
                    homo = function() private$.items[["homo"]],
                    norm = function() private$.items[["norm"]],
                    qq = function() private$.items[["qq"]]),
                private = list(),
                public=list(
                    initialize=function(options) {
                        super$initialize(
                            options=options,
                            name="assump",
                            title="Assumption Checks")
                        self$add(jmvcore::Table$new(
                            options=options,
                            name="homo",
                            title="Homogeneity of Variances Test (Levene's)",
                            refs="car",
                            visible="(homo)",
                            rows=1,
                            columns=list(
                                list(
                                    `name`="F", 
                                    `type`="number"),
                                list(
                                    `name`="df1", 
                                    `type`="integer"),
                                list(
                                    `name`="df2", 
                                    `type`="integer"),
                                list(
                                    `name`="p", 
                                    `type`="number", 
                                    `format`="zto,pvalue"))))
                        self$add(jmvcore::Table$new(
                            options=options,
                            name="norm",
                            title="Normality Test (Shapiro-Wilk)",
                            visible="(norm)",
                            rows=1,
                            clearWith=list(
                                "dep",
                                "factors",
                                "covs",
                                "modelTerms"),
                            columns=list(
                                list(
                                    `name`="t[sw]", 
                                    `title`="", 
                                    `type`="text", 
                                    `content`="Shapiro-Wilk", 
                                    `visible`=FALSE),
                                list(
                                    `name`="s[sw]", 
                                    `title`="Statistic"),
                                list(
                                    `name`="p[sw]", 
                                    `title`="p", 
                                    `format`="zto,pvalue"))))
                        self$add(jmvcore::Image$new(
                            options=options,
                            name="qq",
                            title="Q-Q Plot",
                            visible="(qq)",
                            width=450,
                            height=400,
                            renderFun=".qqPlot",
                            requiresData=TRUE,
                            clearWith=list(
                                "dep",
                                "modelTerms")))}))$new(options=options))
            self$add(jmvcore::Array$new(
                options=options,
                name="contrasts",
                title="Contrasts",
                visible="(contrasts)",
                clearWith=list(
                    "dep",
                    "modelTerms"),
                template=jmvcore::Table$new(
                    options=options,
                    title="Contrasts - $key",
                    clearWith=NULL,
                    columns=list(
                        list(
                            `name`="contrast", 
                            `title`="", 
                            `type`="text"),
                        list(
                            `name`="est", 
                            `title`="Estimate", 
                            `type`="number"),
                        list(
                            `name`="se", 
                            `title`="SE", 
                            `type`="number"),
                        list(
                            `name`="t", 
                            `type`="number"),
                        list(
                            `name`="p", 
                            `title`="p", 
                            `type`="number", 
                            `format`="zto,pvalue")))))
            self$add(jmvcore::Array$new(
                options=options,
                name="postHoc",
                title="Post Hoc Tests",
                items="(postHoc)",
                clearWith=list(
                    "dep",
                    "modelTerms",
                    "postHocEsCiWidth"),
                refs="emmeans",
                template=jmvcore::Table$new(
                    options=options,
                    title="",
                    columns=list(),
                    clearWith=list(
                        "dep",
                        "modelTerms",
                        "postHocEsCiWidth"))))
            self$add(jmvcore::Array$new(
                options=options,
                name="emm",
                title="Estimated Marginal Means",
                refs="emmeans",
                clearWith=list(
                    "emMeans"),
                template=R6::R6Class(
                    inherit = jmvcore::Group,
                    active = list(
                        emmPlot = function() private$.items[["emmPlot"]],
                        emmTable = function() private$.items[["emmTable"]]),
                    private = list(),
                    public=list(
                        initialize=function(options) {
                            super$initialize(
                                options=options,
                                name="undefined",
                                title="")
                            self$add(jmvcore::Image$new(
                                options=options,
                                name="emmPlot",
                                title="",
                                width=450,
                                height=400,
                                renderFun=".emmPlot",
                                visible="(emmPlots)",
                                clearWith=list(
                                    "ciWidthEmm",
                                    "emmWeights",
                                    "dep",
                                    "modelTerms",
                                    "emmPlotData",
                                    "emmPlotError")))
                            self$add(jmvcore::Table$new(
                                options=options,
                                name="emmTable",
                                title="",
                                visible="(emmTables)",
                                columns=list(),
                                clearWith=list(
                                    "ciWidthEmm",
                                    "emmWeights",
                                    "dep",
                                    "modelTerms")))}))$new(options=options)))
            self$add(jmvcore::Output$new(
                options=options,
                name="residsOV",
                title="Residuals",
                varTitle="Residuals",
                varDescription="Residuals from ANCOVA",
                measureType="continuous",
                clearWith=list(
                    "dep",
                    "factors",
                    "covs",
                    "modelTerms")))},
        .setModel=function(x) private$..model <- x))

ancovaBase <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "ancovaBase",
    inherit = jmvcore::Analysis,
    public = list(
        initialize = function(options, data=NULL, datasetId="", analysisId="", revision=0) {
            super$initialize(
                package = "jmv",
                name = "ancova",
                version = c(2,0,0),
                options = options,
                results = ancovaResults$new(options=options),
                data = data,
                datasetId = datasetId,
                analysisId = analysisId,
                revision = revision,
                pause = NULL,
                completeWhenFilled = TRUE,
                requiresMissings = FALSE,
                weightsSupport = 'none')
        }))

#' ANCOVA
#'
#' The Analysis of Covariance (ANCOVA) is used to explore the relationship
#' between a continuous dependent variable, one or more categorical
#' explanatory variables, and one or more continuous explanatory variables
#' (or covariates). It is essentially the same analysis as ANOVA, but
#' with the addition of covariates.
#' 
#'
#' @examples
#' data('ToothGrowth')
#'
#' ancova(formula = len ~ supp + dose, data = ToothGrowth)
#'
#' #
#' #  ANCOVA
#' #
#' #  ANCOVA
#' #  -----------------------------------------------------------------------
#' #                 Sum of Squares    df    Mean Square    F        p
#' #  -----------------------------------------------------------------------
#' #    supp                    205     1          205.4     11.4     0.001
#' #    dose                   2224     1         2224.3    124.0    < .001
#' #    Residuals              1023    57           17.9
#' #  -----------------------------------------------------------------------
#' #
#'
#' ancova(
#'     formula = len ~ supp + dose,
#'     data = ToothGrowth,
#'     postHoc = ~ supp,
#'     emMeans = ~ supp)
#'
#' @param data the data as a data frame
#' @param dep the dependent variable from \code{data}, variable must be
#'   numeric (not necessary when providing a formula, see examples)
#' @param factors the explanatory factors in \code{data} (not necessary when
#'   providing a formula, see examples)
#' @param covs the explanatory covariates (not necessary when providing a
#'   formula, see examples)
#' @param effectSize one or more of \code{'eta'}, \code{'partEta'}, or
#'   \code{'omega'}; use eta², partial eta², and omega² effect sizes,
#'   respectively
#' @param modelTest \code{TRUE} or \code{FALSE} (default); perform an overall
#'   model test
#' @param modelTerms a formula describing the terms to go into the model (not
#'   necessary when providing a formula, see examples)
#' @param ss \code{'1'}, \code{'2'} or \code{'3'} (default), the sum of
#'   squares to use
#' @param homo \code{TRUE} or \code{FALSE} (default), perform homogeneity
#'   tests
#' @param norm \code{TRUE} or \code{FALSE} (default), perform Shapiro-Wilk
#'   tests of normality
#' @param qq \code{TRUE} or \code{FALSE} (default), provide a Q-Q plot of
#'   residuals
#' @param contrasts a list of lists specifying the factor and type of contrast
#'   to use, one of \code{'deviation'}, \code{'simple'}, \code{'difference'},
#'   \code{'helmert'}, \code{'repeated'} or \code{'polynomial'}
#' @param postHoc a formula containing the terms to perform post-hoc tests on
#'   (see the examples)
#' @param postHocCorr one or more of \code{'none'}, \code{'tukey'},
#'   \code{'scheffe'}, \code{'bonf'}, or \code{'holm'}; provide no, Tukey,
#'   Scheffé, Bonferroni, and Holm Post Hoc corrections respectively
#' @param postHocES a possible value of \code{'d'}; provide Cohen's d measure
#'   of effect size for the post-hoc tests
#' @param postHocEsCi \code{TRUE} or \code{FALSE} (default), provide
#'   confidence intervals for the post-hoc effect sizes
#' @param postHocEsCiWidth a number between 50 and 99.9 (default: 95), the
#'   width of confidence intervals for the post-hoc effect sizes
#' @param emMeans a formula containing the terms to estimate marginal means
#'   for (see the examples)
#' @param emmPlots \code{TRUE} (default) or \code{FALSE}, provide estimated
#'   marginal means plots
#' @param emmPlotData \code{TRUE} or \code{FALSE} (default), plot the data on
#'   top of the marginal means
#' @param emmPlotError \code{'none'}, \code{'ci'} (default), or \code{'se'}.
#'   Use no error bars, use confidence intervals, or use standard errors on the
#'   marginal mean plots, respectively
#' @param emmTables \code{TRUE} or \code{FALSE} (default), provide estimated
#'   marginal means tables
#' @param emmWeights \code{TRUE} (default) or \code{FALSE}, weigh each cell
#'   equally or weigh them according to the cell frequency
#' @param ciWidthEmm a number between 50 and 99.9 (default: 95) specifying the
#'   confidence interval width for the estimated marginal means
#' @param formula (optional) the formula to use, see the examples
#' @return A results object containing:
#' \tabular{llllll}{
#'   \code{results$main} \tab \tab \tab \tab \tab a table of ANCOVA results \cr
#'   \code{results$model} \tab \tab \tab \tab \tab The underlying \code{aov} object \cr
#'   \code{results$assump$homo} \tab \tab \tab \tab \tab a table of homogeneity tests \cr
#'   \code{results$assump$norm} \tab \tab \tab \tab \tab a table of normality tests \cr
#'   \code{results$assump$qq} \tab \tab \tab \tab \tab a q-q plot \cr
#'   \code{results$contrasts} \tab \tab \tab \tab \tab an array of contrasts tables \cr
#'   \code{results$postHoc} \tab \tab \tab \tab \tab an array of post-hoc tables \cr
#'   \code{results$emm} \tab \tab \tab \tab \tab an array of the estimated marginal means plots + tables \cr
#'   \code{results$residsOV} \tab \tab \tab \tab \tab an output \cr
#' }
#'
#' Tables can be converted to data frames with \code{asDF} or \code{\link{as.data.frame}}. For example:
#'
#' \code{results$main$asDF}
#'
#' \code{as.data.frame(results$main)}
#'
#' @export
ancova <- function(
    data,
    dep,
    factors = NULL,
    covs = NULL,
    effectSize = NULL,
    modelTest = FALSE,
    modelTerms = NULL,
    ss = "3",
    homo = FALSE,
    norm = FALSE,
    qq = FALSE,
    contrasts = NULL,
    postHoc = NULL,
    postHocCorr = list(
                "tukey"),
    postHocES = list(),
    postHocEsCi = FALSE,
    postHocEsCiWidth = 95,
    emMeans = list(
                list()),
    emmPlots = TRUE,
    emmPlotData = FALSE,
    emmPlotError = "ci",
    emmTables = FALSE,
    emmWeights = TRUE,
    ciWidthEmm = 95,
    formula) {

    if ( ! requireNamespace("jmvcore", quietly=TRUE))
        stop("ancova requires jmvcore to be installed (restart may be required)")

    if ( ! missing(formula)) {
        if (missing(dep))
            dep <- jmvcore::marshalFormula(
                formula=formula,
                data=`if`( ! missing(data), data, NULL),
                from="lhs",
                subset="1",
                required=TRUE)
        if (missing(factors))
            factors <- jmvcore::marshalFormula(
                formula=formula,
                data=`if`( ! missing(data), data, NULL),
                from="rhs",
                type="vars",
                permitted="factor")
        if (missing(covs))
            covs <- jmvcore::marshalFormula(
                formula=formula,
                data=`if`( ! missing(data), data, NULL),
                from="rhs",
                type="vars",
                permitted="numeric")
        if (missing(modelTerms))
            modelTerms <- jmvcore::marshalFormula(
                formula=formula,
                data=`if`( ! missing(data), data, NULL),
                from="rhs",
                type="terms")
    }

    if ( ! missing(dep)) dep <- jmvcore::resolveQuo(jmvcore::enquo(dep))
    if ( ! missing(factors)) factors <- jmvcore::resolveQuo(jmvcore::enquo(factors))
    if ( ! missing(covs)) covs <- jmvcore::resolveQuo(jmvcore::enquo(covs))
    if (missing(data))
        data <- jmvcore::marshalData(
            parent.frame(),
            `if`( ! missing(dep), dep, NULL),
            `if`( ! missing(factors), factors, NULL),
            `if`( ! missing(covs), covs, NULL))

    for (v in factors) if (v %in% names(data)) data[[v]] <- as.factor(data[[v]])
    if (inherits(modelTerms, "formula")) modelTerms <- jmvcore::decomposeFormula(modelTerms)
    if (inherits(postHoc, "formula")) postHoc <- jmvcore::decomposeFormula(postHoc)
    if (inherits(emMeans, "formula")) emMeans <- jmvcore::decomposeFormula(emMeans)

    options <- ancovaOptions$new(
        dep = dep,
        factors = factors,
        covs = covs,
        effectSize = effectSize,
        modelTest = modelTest,
        modelTerms = modelTerms,
        ss = ss,
        homo = homo,
        norm = norm,
        qq = qq,
        contrasts = contrasts,
        postHoc = postHoc,
        postHocCorr = postHocCorr,
        postHocES = postHocES,
        postHocEsCi = postHocEsCi,
        postHocEsCiWidth = postHocEsCiWidth,
        emMeans = emMeans,
        emmPlots = emmPlots,
        emmPlotData = emmPlotData,
        emmPlotError = emmPlotError,
        emmTables = emmTables,
        emmWeights = emmWeights,
        ciWidthEmm = ciWidthEmm)

    analysis <- ancovaClass$new(
        options = options,
        data = data)

    analysis$run()

    analysis$results
}

