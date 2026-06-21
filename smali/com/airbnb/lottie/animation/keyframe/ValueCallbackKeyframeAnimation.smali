.class public final Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final valueCallbackValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getEndProgress()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    .line 2
    iget v5, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    move v6, v5

    move v7, v5

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final notifyListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    return-void
.end method
