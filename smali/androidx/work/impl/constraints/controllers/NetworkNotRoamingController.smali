.class public final Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;
.source "SourceFile"


# instance fields
.field public final reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string/jumbo v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p1, 0x7

    iput p1, p0, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->reason:I

    return-void
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    iget p0, p0, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->reason:I

    return p0
.end method

.method public final hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 0

    const-string/jumbo p0, "workSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget p0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isConstrained(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
