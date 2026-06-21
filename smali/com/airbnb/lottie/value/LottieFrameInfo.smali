.class public final Lcom/airbnb/lottie/value/LottieFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endFrame:F

.field public endValue:Ljava/lang/Object;

.field public interpolatedKeyframeProgress:F

.field public linearKeyframeProgress:F

.field public overallProgress:F

.field public startFrame:F

.field public startValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p0, v0, v1, v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;->reset(FFF)V

    return-void
.end method


# virtual methods
.method public addConnectingShadowIfNecessary(F)V
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    iget v2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iget v3, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    iget v2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    iput v2, v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    iput v0, v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v2, v1}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/ShapePath$PathOperation;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public lineTo(FF)V
    .locals 4

    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    iput p1, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iput p2, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    iget-object v1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;

    iget v2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iget v3, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;->addConnectingShadowIfNecessary(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    iput p1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iput p2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    return-void
.end method

.method public reset(FFF)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iput p1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    iput p2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    add-float/2addr p2, p3

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p2, p1

    iput p2, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    iget-object p1, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
