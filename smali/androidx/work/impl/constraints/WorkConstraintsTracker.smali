.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# instance fields
.field public final controllers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/AppFeatures;)V
    .locals 9

    const-string/jumbo v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    const/4 v2, 0x1

    .line 5
    invoke-direct {v1, v0, v2}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;I)V

    .line 6
    new-instance v2, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 7
    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 8
    invoke-direct {v2, v0}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    .line 9
    new-instance v3, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 10
    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    const/4 v4, 0x4

    .line 11
    invoke-direct {v3, v0, v4}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;I)V

    .line 12
    new-instance v4, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    const/4 v5, 0x2

    .line 14
    invoke-direct {v4, v0, v5}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;I)V

    .line 15
    new-instance v5, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;I)V

    .line 16
    new-instance v6, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;

    invoke-direct {v6, v0}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 17
    new-instance v7, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;

    invoke-direct {v7, v0}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    .line 19
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 22
    new-instance v8, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    invoke-direct {v8, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;)V

    .line 23
    filled-new-array/range {v1 .. v8}, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isStatic()Z
    .locals 3

    iget-object p0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method
