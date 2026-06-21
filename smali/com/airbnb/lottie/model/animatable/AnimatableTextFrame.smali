.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->$r8$classId:I

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Landroidx/media3/common/BasePlayer;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
