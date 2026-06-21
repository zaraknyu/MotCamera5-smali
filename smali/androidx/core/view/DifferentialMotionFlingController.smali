.class public final Landroidx/core/view/DifferentialMotionFlingController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlingVelocityThresholds:[I

.field public mLastFlingVelocity:F

.field public mLastProcessedAxis:I

.field public mLastProcessedDeviceId:I

.field public mLastProcessedSource:I

.field public final mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    iget-object v3, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    invoke-virtual {v2, v6, p2, v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    move-result v6

    aput v6, v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    invoke-virtual {v2, v6, p2, v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    move-result v2

    aput v2, v3, v4

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    iput v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    iput p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    move v0, v4

    :goto_1
    aget v1, v3, v5

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget-object v2, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/16 p1, 0x3e8

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v1, p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget-object p1, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result p1

    iget-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->getScaledScrollFactor()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    :cond_4
    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->stopDifferentialMotionFling()V

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aget v0, v3, v5

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    aget p1, v3, v4

    neg-int v0, p1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-interface {p2, p1}, Landroidx/core/view/DifferentialMotionFlingTarget;->startDifferentialMotionFling(F)Z

    move-result p2

    if-eqz p2, :cond_8

    move v2, p1

    :cond_8
    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    return-void
.end method
