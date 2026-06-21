.class public final Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p0

    return-object p0
.end method

.method public final createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .locals 1

    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
