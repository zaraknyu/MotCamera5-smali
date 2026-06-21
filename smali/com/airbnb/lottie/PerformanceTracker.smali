.class public final Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public final frameListeners:Landroidx/collection/ArraySet;

.field public final layerRenderTimes:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Landroidx/collection/ArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/HashMap;

    return-void
.end method
